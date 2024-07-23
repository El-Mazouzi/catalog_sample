part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel()
@MapTo('catalog_v3')
class _CatalogV3 {
  @PrimaryKey()
  @MapTo('_id')
  late String id;

  late List<_CatalogV3Sc> sc;

  late List<_CatalogV3Se> se;

  late List<_CatalogV3Shops> shops;
  // @MapTo('ids')
  // late List<_Shop> shopsIds;

  CatalogEntity get toEntity {
    return CatalogEntity(
      id: id,
      ids: shops.map((e) => e.shop).toList(),
      shops: shops.map((e) => e.toEntity).toList(),
      sections: sc.map((e) => e.toEntity).toList(),
      services: se.map((e) => e.toEntity).toList(),
    );
  }
}
