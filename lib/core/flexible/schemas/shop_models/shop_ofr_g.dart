part of '../schemas.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel(ObjectType.embeddedObject)
@MapTo('shop_ofr_g')
class _ShopOfrG {
  late List<_ShopOfrGEls> els;

  int? q;

  ShopOfferGet get toEntity {
    return ShopOfferGet(
      elements: els.map((e) => e.toEntity).toList(),
      quantity: q,
    );
  }
}
