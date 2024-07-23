part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ofr')
class _ShopOfr {
  @MapTo('_id')
  ObjectId? id;

  _ShopOfrB? b;

  bool? c;

  _ShopOfrG? g;

  _ShopOfrN? n;

  int? t;

  ShopOffer get toEntity {
    return ShopOffer(
      id: id?.hexString,
      buyOffer: b?.toEntity,
      getOffer: g?.toEntity,
      name: n?.toEntity,
      type: t,
      c: c,
    );
  }
}
