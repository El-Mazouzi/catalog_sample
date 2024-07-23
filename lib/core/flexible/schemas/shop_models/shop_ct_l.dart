part of '../schemas.dart';
// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ct_l')
class _ShopCtL {
  @MapTo('_id')
  ObjectId? id;

  late List<_ShopCtLA> a;

  late List<_ShopCtLBp> bp;

  String? d;

  double? dc;

  String? i;

  double? mi;

  double? mx;

  int? mxq;

  String? n;

  bool? os;

  double? p;
  ArticleEntity toArticleEntity() {
    return ArticleEntity(
      id: id?.hexString ?? '',
      image: i,
      addons: a.map((e) => e.toEntity).toList(),
      basePacks: bp.map((e) => e.toEntity).toList(),
      maxAddon: mx?.toInt(),
      minAddon: mi?.toInt(),
      price: p ?? 0,
      title: n ?? '',
      description: d ?? '',
      maxQtyToBuy: mxq ?? 0,
      discountPercentage: dc ?? 0,
      isOutOfStock: os ?? false,
      priceAfterDiscount:
          (dc ?? 0) == 0 ? p ?? 0 : calculateDiscountedPrice(p ?? 0, dc ?? 0),
    );
  }

  double calculateDiscountedPrice(double price, double discountPercentage) {
    final discountAmount = price * (discountPercentage / 100);
    final discountedPrice = price - discountAmount;
    return discountedPrice;
  }
}
