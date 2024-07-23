part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('catalog_v3_sc')
class _CatalogV3Sc {
  @MapTo('_id')
  ObjectId? id;

  _CatalogV3ScDe? de;

  _CatalogV3ScDn? dn;

  String? nm;

  double? or;
  SectionEntity get toEntity {
    return SectionEntity(
      uid: id?.hexString,
      description: Description(
        ar: de?.ar,
        fr: de?.fr,
        en: de?.en,
      ),
      displayName: Description(
        ar: dn?.ar,
        fr: dn?.fr,
        en: dn?.en,
      ),
      name: nm,
      order: or,
    );
  }
}
