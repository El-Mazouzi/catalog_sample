part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ofr_n')
class _ShopOfrN {
  String? ar;

  String? en;

  String? fr;

  String? n;

 Description get toEntity {
    return Description(
      ar: ar,
      fr: fr,
      en: en,
      name: n,
    );
  }
}
