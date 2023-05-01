import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:sync_demo_server/src/generated/grpc/category.pbgrpc.dart';
import 'package:sync_demo_server/src/generated/prisma/prisma_client.dart';
import 'package:sync_demo_server/src/provider/prisma_provider.dart';

class CategoryService extends CategoryServiceBase {
  @override
  Future<PutCategoryResponse> putCategory(grpc.ServiceCall call, PutCategoryRequest request) async {
    try {
      // upsert category
      final category = await PrismaProvider.client.category.upsert(
        where: CategoryWhereUniqueInput(
          name: request.name,
        ),
        create: CategoryCreateInput(
          name: request.name,
          color: request.color,
          updateAt: BigInt.from(request.updateAt.toInt()),
          syncAt: BigInt.from(DateTime.now().millisecondsSinceEpoch),
          deleteAt: request.hasDeleteAt()
            ? BigInt.from(request.deleteAt.toInt())
            : BigInt.from(-1),
        ),
        update: CategoryUpdateInput(
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
      if (request.hasDeleteAt() && request.deleteAt.toInt() == category.deleteAt.toInt()) {
        final affectedTasks = await PrismaProvider.client.task.findMany(
          where: TaskWhereInput(
            category: CategoryRelationFilter(
              $is: CategoryWhereInput(
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
                deleteAt: BigIntFieldUpdateOperationsInput(
                  set: BigInt.from(request.deleteAt.toInt()),
                ),
              ),
            );
          });
        }));
      }
      return PutCategoryResponse();
    } catch (e) {
      throw grpc.GrpcError.internal();
    }
  }

  @override
  Future<FetchCategoryResponse> fetchCategory(grpc.ServiceCall call, FetchCategoryRequest request) async {
    try {
      final categories = await PrismaProvider.client.category.findMany(
        where: CategoryWhereInput(
          syncAt: BigIntFilter(
            gte: BigInt.from(request.lastFetchAt.toInt()),
          ),
        ),
      );
      return FetchCategoryResponse(
        categories: categories.map((category) {
          return CategoryInfo(
            name: category.name,
            color: category.color,
            updateAt: Int64(category.updateAt.toInt()),
            deleteAt: category.deleteAt != BigInt.from(-1)
              ? Int64(category.deleteAt.toInt())
              : null,
          );
        }).toList(),
      );
    } catch (e) {
      throw grpc.GrpcError.internal();
    }
  }
}
