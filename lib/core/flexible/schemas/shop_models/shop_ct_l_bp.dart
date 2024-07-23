part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ct_l_bp')
class _ShopCtLBp {
  @MapTo('_id')
  ObjectId? id;

  String? d;

  double? mn;

  double? mx;

  String? n;

  late List<_ShopCtLBpSp> sp;

  String? t;

  BasePackEntity get toEntity {
    return BasePackEntity(
      id: id?.hexString,
      description: d,
      min: mn?.toInt(),
      max: mx?.toInt(),
      name: n,
      subPacks: sp.map((e) => e.toEntity).toList(),
      type: t != null ? BasePackType.fromMap(t!) : null,
    );
  }
}
