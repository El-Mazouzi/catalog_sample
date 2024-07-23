part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_loc')
class _ShopLoc {
  double? lat;

  double? lng;
}
