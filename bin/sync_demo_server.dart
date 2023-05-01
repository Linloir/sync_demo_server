import 'package:grpc/grpc.dart' as grpc;
import 'package:sync_demo_server/src/services/category.dart';
import 'package:sync_demo_server/src/services/tag.dart';
import 'package:sync_demo_server/src/services/task.dart';

Future<void> main() async {
  final server = grpc.Server(
    [
      CategoryService(),
      TagService(),
      TaskService()
    ]
  );

  await server.serve(port: 8080);
  print('Server listening on port ${server.port}...');
}
