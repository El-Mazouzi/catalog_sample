import 'dart:convert';

import 'package:flutter/services.dart';

class RealmConfig {
  RealmConfig(Map<String, dynamic> realmConfig) {
    appId = realmConfig['appId'] as String;
    atlasUrl = realmConfig['dataExplorerLink'] as String;
    baseUrl = Uri.parse(realmConfig['baseUrl'] as String);
  }
  late String appId;
  late String atlasUrl;
  late Uri baseUrl;

  static Future<RealmConfig> getConfig(String jsonConfigPath) async {
    final realmConfig = json.decode(
      await rootBundle.loadString(
        jsonConfigPath,
      ),
    ) as Map<String, dynamic>;

    final config = RealmConfig(realmConfig);

    return config;
  }
}
