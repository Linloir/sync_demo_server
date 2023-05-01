import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:sync_demo_server/src/generated/grpc/task.pbgrpc.dart';
import 'package:sync_demo_server/src/generated/prisma/prisma_client.dart';
import 'package:sync_demo_server/src/provider/prisma_provider.dart';

class TaskService extends TaskServiceBase {
  @override
  Future<PutTaskResponse> putTask(grpc.ServiceCall call, PutTaskRequest request) async {
    try {
      // upsert dependencies
      await PrismaProvider.client.category.upsert(
        where: CategoryWhereUniqueInput(
          name: request.category.name,
        ),
        create: CategoryCreateInput(
          name: request.category.name,
          color: request.category.color,
          updateAt: BigInt.from(request.category.updateAt.toInt()),
          syncAt: BigInt.from(DateTime.now().millisecondsSinceEpoch),
          deleteAt: request.category.hasDeleteAt()
            ? BigInt.from(request.category.deleteAt.toInt())
            : BigInt.from(-1),
        ),
        update: CategoryUpdateInput(
          color: IntFieldUpdateOperationsInput(
            set: request.category.color,
          ),
          updateAt: BigIntFieldUpdateOperationsInput(
            set: BigInt.from(request.category.updateAt.toInt()),
          ),
          syncAt: BigIntFieldUpdateOperationsInput(
            set: BigInt.from(DateTime.now().millisecondsSinceEpoch),
          ),
          deleteAt: BigIntFieldUpdateOperationsInput(
            set: request.category.hasDeleteAt()
              ? BigInt.from(request.category.deleteAt.toInt())
              : BigInt.from(-1),
          ),
        ),
      );
      await Future.wait(request.tags.map((tag) {
        return Future(() async {
          await PrismaProvider.client.tag.upsert(
            where: TagWhereUniqueInput(
              name: tag.name,
            ),
            create: TagCreateInput(
              name: tag.name,
              color: tag.color,
              updateAt: BigInt.from(tag.updateAt.toInt()),
              syncAt: BigInt.from(DateTime.now().millisecondsSinceEpoch),
              deleteAt: tag.hasDeleteAt()
                ? BigInt.from(tag.deleteAt.toInt())
                : BigInt.from(-1),
            ),
            update: TagUpdateInput(
              color: IntFieldUpdateOperationsInput(
                set: tag.color,
              ),
              updateAt: BigIntFieldUpdateOperationsInput(
                set: BigInt.from(tag.updateAt.toInt()),
              ),
              syncAt: BigIntFieldUpdateOperationsInput(
                set: BigInt.from(DateTime.now().millisecondsSinceEpoch),
              ),
              deleteAt: BigIntFieldUpdateOperationsInput(
                set: tag.hasDeleteAt()
                  ? BigInt.from(tag.deleteAt.toInt())
                  : BigInt.from(-1),
              ),
            ),
          );
        });
      }));
      // check strong dependencies
      final category = await PrismaProvider.client.category.findUnique(
        where: CategoryWhereUniqueInput(
          name: request.category.name,
        ),
      );
      if (category!.deleteAt != BigInt.from(-1)) {
        request.deleteAt = Int64(category.deleteAt.toInt());
      }
      // check weak dependencies
      await Future.wait(request.tags.map((tag) async {
        final localTag = await PrismaProvider.client.tag.findUnique(
          where: TagWhereUniqueInput(
            name: tag.name,
          ),
        );
        if (localTag!.deleteAt != BigInt.from(-1)) {
          request.tags.remove(tag);
        }
      }));
      // upsert task
      await PrismaProvider.client.task.upsert(
        where: TaskWhereUniqueInput(
          uuid: request.uuid,
        ),
        create: TaskCreateInput(
          uuid: request.uuid,
          title: request.title,
          status: request.status,
          category: CategoryCreateNestedOneWithoutTasksInput(
            connect: CategoryWhereUniqueInput(
              name: request.category.name,
            ),
          ),
          tags: TagCreateNestedManyWithoutTasksInput(
            connect: request.tags.map((tag) => TagWhereUniqueInput(
                name: tag.name,
            )),
          ),
          updateAt: BigInt.from(request.updateAt.toInt()),
          syncAt: BigInt.from(DateTime.now().millisecondsSinceEpoch),
          deleteAt: request.hasDeleteAt()
            ? BigInt.from(request.deleteAt.toInt())
            : BigInt.from(-1),
        ),
        update: TaskUpdateInput(
          title: StringFieldUpdateOperationsInput(
            set: request.title,
          ),
          status: BoolFieldUpdateOperationsInput(
            set: request.status,
          ),
          category: CategoryUpdateOneRequiredWithoutTasksNestedInput(
            connect: CategoryWhereUniqueInput(
              name: request.category.name,
            ),
          ),
          tags: TagUpdateManyWithoutTasksNestedInput(
            connect: request.tags.map((tag) => TagWhereUniqueInput(
                name: tag.name,
            )),
          ),
          updateAt: BigIntFieldUpdateOperationsInput(
            set: BigInt.from(request.updateAt.toInt()),
          ),
          syncAt: BigIntFieldUpdateOperationsInput(
            set: BigInt.from(DateTime.now().millisecondsSinceEpoch),
          ),
          deleteAt: BigIntFieldUpdateOperationsInput(
            set: request.hasDeleteAt()
              ? BigInt.from(request.deleteAt.toInt())
              : BigInt.from(-1),
          ),
        ),
      );
      return PutTaskResponse();
    } catch (e) {
      throw grpc.GrpcError.internal();
    }
  }

  @override
  Future<FetchTaskResponse> fetchTask(grpc.ServiceCall call, FetchTaskRequest request) async {
    try {
      // fetch tasks
      final tasks = await PrismaProvider.client.task.findMany(
        where: TaskWhereInput(
          syncAt: request.hasLastFetchAt()
            ? BigIntFilter(
                gte: BigInt.from(request.lastFetchAt.toInt()),
              )
            : null,
        ),
      );
      // fetch tags
      final tagMap = <String, List<Tag>>{};
      await Future.wait(tasks.map((task) async {
        final tags = await PrismaProvider.client.task.findUnique(
          where: TaskWhereUniqueInput(
            uuid: task.uuid,
          ),
        ).tags();
        tagMap[task.uuid] = tags?.toList() ?? [];
      }));
      // fetch category
      final categoryMap = <String, Category>{};
      await Future.wait(tasks.map((task) async {
        final category = await PrismaProvider.client.task.findUnique(
          where: TaskWhereUniqueInput(
            uuid: task.uuid,
          ),
        ).category();
        categoryMap[task.uuid] = category;
      }));
      // build response
      return FetchTaskResponse(
        tasks: tasks.map((task) => TaskInfo(
          uuid: task.uuid,
          title: task.title,
          status: task.status,
          category: NestedCategory(
            name: categoryMap[task.uuid]!.name,
            color: categoryMap[task.uuid]!.color,
            updateAt: Int64(categoryMap[task.uuid]!.updateAt.toInt()),
            deleteAt: categoryMap[task.uuid]!.deleteAt != BigInt.from(-1)
              ? Int64(categoryMap[task.uuid]!.deleteAt.toInt())
              : null,
          ),
          tags: tagMap[task.uuid]!.map((tag) => NestedTag(
            name: tag.name,
            color: tag.color,
            updateAt: Int64(tag.updateAt.toInt()),
            deleteAt: tag.deleteAt != BigInt.from(-1)
              ? Int64(tag.deleteAt.toInt())
              : null,
          )),
          updateAt: Int64(task.updateAt.toInt()),
          deleteAt: task.deleteAt != BigInt.from(-1)
            ? Int64(task.deleteAt.toInt())
            : null,
        )),
      );
    } catch (e) {
      throw grpc.GrpcError.internal();
    }
  }
}
