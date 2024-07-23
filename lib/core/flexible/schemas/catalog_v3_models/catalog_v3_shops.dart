part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('catalog_v3_shops')
class _CatalogV3Shops {
  @MapTo('_id')
  late ObjectId? shop;

  double? dist;

  double? dm;

  double? dp;

  String? dt;

  String? h3;

  ShopEntity get toEntity {
    return ShopEntity(
      id: shop?.hexString ?? '',
      deliveryPrice: double.tryParse(dp?.toStringAsFixed(2) ?? ''),
      deliveryTime: dt,
      deliveryTimeVal: dm,
      distance: dist,
    );
  }
}
