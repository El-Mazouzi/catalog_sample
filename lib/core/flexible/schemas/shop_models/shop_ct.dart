part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ct')
class _ShopCt {
  @MapTo('_id')
  ObjectId? id;

  String? i;

  late List<_ShopCtL> l;

  String? n;

  double? o;

  ObjectId? p;

  CategoryEntity toCategoryEntity() {
    return CategoryEntity(
      id: id?.hexString,
      title: n ?? '',
      articles: l.map((e) => e.toArticleEntity()).toList(),
      parent: p?.hexString,
      image: i,
      order: o,
    );
  }
}
