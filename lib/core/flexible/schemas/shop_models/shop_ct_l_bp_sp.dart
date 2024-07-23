part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ct_l_bp_sp')
class _ShopCtLBpSp {
  @MapTo('_id')
  ObjectId? id;

  String? n;

  double? p;

  int? v;

  SubPackEntity get toEntity {
    return SubPackEntity(
      id: id?.hexString,
      name: n,
      price: p,
      visibility: v,
    );
  }
}
