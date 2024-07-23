part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('catalog_v3_sc_dn')
class _CatalogV3ScDn {
  String? ar;

  String? en;

  String? fr;
}
