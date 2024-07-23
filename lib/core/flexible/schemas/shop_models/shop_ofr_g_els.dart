part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ofr_g_els')
class _ShopOfrGEls {
  @MapTo('_id')
  ObjectId? id;

  double? d;

  String? n;

  ShopOfferGetElement get toEntity {
    return ShopOfferGetElement(
      id: id?.hexString,
      discount: d,
      name: n,
    );
  }
}
