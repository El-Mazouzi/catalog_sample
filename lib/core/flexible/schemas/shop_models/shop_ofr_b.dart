part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ofr_b')
class _ShopOfrB {
  ObjectId? e;

  String? n;

  int? q;

  ShopOfferBuy get toEntity {
    return ShopOfferBuy(
      element: e?.hexString,
      name: n,
      quantity: q,
    );
  }
}
