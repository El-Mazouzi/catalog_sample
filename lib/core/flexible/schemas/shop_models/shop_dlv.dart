part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_dlv')
class _ShopDlv {
  @MapTo('_id')
  ObjectId? id;

  String? cd;

  double? ta;
}
