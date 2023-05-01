import 'dart:io';

import 'package:sync_demo_server/src/model/config.dart';
import 'package:yaml/yaml.dart';

abstract class Config {
  static final _secrets = File('local/secret.yaml').readAsStringSync();
  
  static Map<dynamic, dynamic> _parseSecret(String key) {
    final list = loadYaml(_secrets)[key] as YamlList;
    return list.fold(
      {},
      (conf, entry) => conf..addAll(entry)
    );
  }

  static DBConfig get database {
    final postgre = _parseSecret('postgre');
    return DBConfig(
      user: postgre['user'] ?? '',
      password: postgre['password'] ?? '',
      host: postgre['host'] ?? '',
      port: postgre['port'] ?? 5432,
    );
  }
}
