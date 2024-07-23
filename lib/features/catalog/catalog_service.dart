import 'dart:io';

import 'package:catalog_sample/features/catalog/catalog.dart';
import 'package:catalog_sample/core/flexible/schemas/schemas.dart';
import 'package:catalog_sample/core/utils/log.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

class CatalogService with ChangeNotifier {
  CatalogService(this.app, this.directory);
  App app;
  final Directory directory;
  CatalogEntity? _catalog;
  CatalogEntity? get catalog => _catalog;

  String? _catalogId;

  String? get catalogId => _catalogId;

  set catalogId(String? value) {
    logSuccess('Set Catalog ID :$value');
    _catalogId = value;
  }

  set catalog(CatalogEntity? ca) {
    logInfo('catalog set ${ca?.id}');

    _catalog = ca;
    notifyListeners();
  }

  /// This class represents a `user` in an [Atlas App Services]
  User? currentUser;

  Realm? _flexibleSync;
  Realm? get flexibleSync {
    if (_flexibleSync != null) return _flexibleSync;
    if (app.currentUser != null) {
      currentUser ??= app.currentUser;

      _flexibleSync = Realm(
        Configuration.flexibleSync(
          currentUser!,
          [
            ...catalogV3Schemas,
            ...shopSchemas,
          ],
          path: '${directory.path}/flex.catalogv3.realm',
        ),
      );
      logInfo(
        'CatalogService: flexibleSync connected ${_flexibleSync?.config.path}',
      );
      return _flexibleSync;
    }
    return null;
  }

  Future<void> close() async {
    await currentUser?.logOut();
    currentUser = null;
    _flexibleSync?.close();
    _flexibleSync = null;
    catalog = null;
    notifyListeners();
  }
}
