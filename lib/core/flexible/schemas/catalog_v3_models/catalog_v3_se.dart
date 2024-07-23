part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('catalog_v3_se')
class _CatalogV3Se {
  @MapTo('_id')
  ObjectId? id;

  bool? df;

  _CatalogV3SeDn? dn;

  bool? ds;

  String? ni;

  String? nm;

  double? or;

  FoodServiceEntity get toEntity {
    return FoodServiceEntity(
      sId: id?.hexString,
      displayName: Description(
        ar: dn?.ar,
        fr: dn?.fr,
        en: dn?.en,
      ),
      name: nm,
      order: or,
      isDarkStore: ds,
      isDefault: df,
      newImageService: ni,
    );
  }
}
