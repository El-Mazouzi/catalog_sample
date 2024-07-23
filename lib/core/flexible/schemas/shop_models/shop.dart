part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel()
@MapTo('shop')
class _Shop {
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId id;

  String? ad;

  String? cc;

  late List<_ShopCt> ct;

  late List<String> cu;

  late List<_ShopDlv> dlv;

  double? dm;

  String? dt;

  String? im;

  _ShopLoc? loc;

  double? min;

  String? nm;

  late List<_ShopOfr> ofr;

  late List<String> op;

  int? pr;

  int? pt;

  double? rt;

  double? rv;

  late List<ObjectId> sc;

  late List<ObjectId> se;

  double? svc;

  int? t;
  _ShopsOff? off;
  // @MapTo('_v')
  // int? v;
  // @Backlink(#shopsIds)
  // late Iterable<_CatalogV3> linkedCatalogs;

  ShopEntity get toShopEntity {
    return ShopEntity(
      id: id.hexString,
      address: ad,
      categories: ct.map((e) => e.toCategoryEntity()).toList(),
      cuisines: cu,
      // deliveryPrice: double.tryParse(dp?.toStringAsFixed(2) ?? ''),
      deliveryTime: dt,
      imageUrl: im,
      name: nm,
      openingHours: op,
      // radius: rd,
      rating: double.tryParse(rt?.toStringAsFixed(2) ?? '0') ?? 0,
      reviews: rv,
      sections: sc.map((e) => e.hexString).toList(),
      services: se.map((e) => e.hexString).toList(),
      expensiveRating: (pt ?? 0) + 1,
      deliveryTimeVal: dm,
      // distance: dist,
      priority: pr,
      // version: v ?? '',
      offers: ofr.map((e) => e.toEntity).toList(),
      minOrderAmount: min,
      shopOff: off?.toEntity,
      serviceCharge: svc,
      type: t == 0 ? ShopType.market : ShopType.food,
    );
  }

  ArticleEntity? getArticleById(String id) {
    for (final category in ct) {
      for (final article in category.l) {
        if (article.id?.hexString == id) {
          return article.toArticleEntity();
        }
      }
    }
    return null;
  }
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('shops_off')
class _ShopsOff {
  double? mo;

  double? oa;

  int? ot;

  double? ta;

  ShopOff get toEntity {
    return ShopOff(
      maxOff: mo,
      offerAmount: oa,
      targetAmount: ta,
      offerType: ot,
    );
  }
}
