import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:sync_demo_server/src/generated/grpc/tag.pbgrpc.dart';
import 'package:sync_demo_server/src/generated/prisma/prisma_client.dart';
import 'package:sync_demo_server/src/provider/prisma_provider.dart';

class TagService extends TagServiceBase {
  @override
  Future<PutTagResponse> putTag(grpc.ServiceCall call, PutTagRequest request) async {
    try {
      // upsert tag
      final tag = await PrismaProvider.client.tag.upsert(
        where: TagWhereUniqueInput(
          name: request.name,
        ),
        create: TagCreateInput(
          name: request.name,
          color: request.color,
          updateAt: BigInt.from(request.updateAt.toInt()),
          syncAt: BigInt.from(DateTime.now().millisecondsSinceEpoch),
          deleteAt: request.hasDeleteAt()
            ? BigInt.from(request.deleteAt.toInt())
            : BigInt.from(-1),
        ),
        update: TagUpdateInput(
          color: IntFieldUpdateOperationsInput(
            set: request.color,
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
      // resolve dependents
      if (request.hasDeleteAt() && request.deleteAt.toInt() == tag.deleteAt.toInt()) {
        final affectedTasks = await PrismaProvider.client.task.findMany(
          where: TaskWhereInput(
            tags: TagListRelationFilter(
              some: TagWhereInput(
                name: StringFilter(
                  equals: request.name,
                ),
              ),
            ),
          ),
        );
        await Future.wait(affectedTasks.map((task) {
          return Future(() async {
            await PrismaProvider.client.task.update(
              where: TaskWhereUniqueInput(
                id: task.id,
              ),
              data: TaskUpdateInput(
                tags: TagUpdateManyWithoutTasksNestedInput(
                  disconnect: [
                    TagWhereUniqueInput(
                      name: request.name,
                    ),
                  ],
                ),
              ),
            );
          });
        }));
      }
      return PutTagResponse();
    } catch (e) {
      throw grpc.GrpcError.internal();
    }
  }

  @override
  Future<FetchTagResponse> fetchTag(grpc.ServiceCall call, FetchTagRequest request) async {
    try {
      final tags = await PrismaProvider.client.tag.findMany(
        where: TagWhereInput(
          syncAt: request.hasLastFetchAt()
            ? BigIntFilter(
              gte: BigInt.from(request.lastFetchAt.toInt()),
            )
            : null,
        ),
      );
      return FetchTagResponse(
        tags: tags.map((tag) {
          return TagInfo(
            name: tag.name,
            color: tag.color,
            updateAt: Int64(tag.updateAt.toInt()),
            deleteAt: tag.deleteAt != BigInt.from(-1)
              ? Int64(tag.deleteAt.toInt())
              : null,
          );
        }).toList(),
      );
    } catch (e) {
      throw grpc.GrpcError.internal();
    }
  }
}
