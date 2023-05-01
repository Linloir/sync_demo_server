import 'package:sync_demo_server/config.dart';
import 'package:sync_demo_server/src/generated/prisma/prisma_client.dart';

class PrismaProvider {
  static final PrismaProvider _singleton = PrismaProvider._init();
  static PrismaClient get client => _singleton._client;
  
  final PrismaClient _client;

  PrismaProvider._internal(this._client);

  factory PrismaProvider._init() {
    final user = Config.database.user;
    final password = Config.database.password;
    final host = Config.database.host;
    final port = Config.database.port;
    final postgreUrl = 'postgresql://$user:$password@$host:$port/sync_demo?schema=public';
    final client = PrismaClient(
      datasources: Datasources(
        db: postgreUrl
      ),
    );
    return PrismaProvider._internal(client);
  }
}
