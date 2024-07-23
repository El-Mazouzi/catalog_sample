// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_nullable_for_final_variable_declarations
import 'dart:convert';

import 'package:catalog_sample/features/catalog/domain/entities/article_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/category_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/description.dart';
import 'package:catalog_sample/features/catalog/domain/entities/location_entity.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

enum ShopType {
  food,
  market,
  ride,
  shop;

  static ShopType fromValue(int value) {
    switch (value) {
      case 0:
        return ShopType.market;
      case 2:
        return ShopType.shop;
      default:
        return ShopType.food;
    }
  }
}

class ShopEntity extends Equatable {
  final String id;
  final String? address;
  final List<CategoryEntity> categories;
  final List<String> cuisines;
  final double? deliveryPrice;
  final String? deliveryTime;
  final String? name;
  final List<String> openingHours;
  final double? radius;
  final double? rating;
  final String? imageUrl;
  final double? reviews;
  final List<String> sections;
  final List<String> services;
  final List<ShopOffer> offers;
  final Offer? offer;
  final int expensiveRating;
  final double? distance;
  final double? deliveryTimeVal;
  final int? priority;
  final String version;
  final LocationEntity? location;
  final double? serviceCharge;
  final double? minOrderAmount;
  final ShopOff? shopOff;
  final ShopType type;
  final String? currencySymbol;

  final List<dynamic>? _allItems = [];
  final List<ArticleEntity> _allArticles = [];

  List<ArticleEntity> get allArticles {
    if (_allArticles.isNotEmpty) {
      return _allArticles;
    }
    _allArticles.clear();
    for (final category in categories) {
      for (final article in category.articles) {
        _allArticles.add(article);
      }
    }
    return _allArticles;
  }

  List<dynamic> get allItems {
    // if (_allItems != null) return _allItems;
    _allItems?.clear();
    for (final category in categories) {
      if (category.articles.isEmpty) continue;
      _allItems?.add(category.title);
      for (final article in category.articles) {
        _allItems?.add(article);
      }
    }
    return _allItems ?? [];
  }

  List<CategoryEntity> get parentCategories => categories
      .where(
        (parentCategory) =>
            parentCategory.parent == null &&
            categories.any(
              (childCategory) =>
                  childCategory.parent == parentCategory.id &&
                  childCategory.articles.isNotEmpty,
            ),
      )
      .toList();

  ShopEntity({
    this.id = '',
    this.address,
    this.categories = const [],
    this.cuisines = const [],
    this.deliveryPrice,
    this.deliveryTime,
    this.name,
    this.openingHours = const [],
    this.radius,
    this.rating,
    this.imageUrl,
    this.reviews,
    this.sections = const [],
    this.services = const [],
    this.offers = const [],
    this.offer,
    this.expensiveRating = 1,
    this.distance,
    this.deliveryTimeVal,
    this.priority,
    this.version = '',
    this.location,
    this.serviceCharge,
    this.minOrderAmount,
    this.shopOff,
    this.type = ShopType.food,
    this.currencySymbol,
  });
  bool isRestaurantOpenNow(int currentHour) {
    // Assuming openingHours is defined somewhere, with intervals like "10:00-14:00" or "22:00-02:00"
    // final openingHours = <String>["10:00-14:00", "22:00-02:00"]; // Example data

    // Convert the current hour to a time format for comparison
    final currentHourFormatted = '${currentHour.toString().padLeft(2, '0')}:00';

    // Iterate through each interval of opening hours
    for (final interval in openingHours) {
      // Split the interval into start and end times
      final times = interval.split('-');

      // Check if the current hour falls within this interval
      if (times.length == 2) {
        final startTime = times[0];
        final endTime = times[1];

        // Handling the midnight edge case
        if (endTime.compareTo(startTime) < 0) {
          // If endTime < startTime, it means the interval crosses midnight
          if (currentHourFormatted.compareTo(startTime) >= 0 ||
              currentHourFormatted.compareTo(endTime) < 0) {
            return true;
          }
        } else {
          // Normal case: interval does not cross midnight
          if (currentHourFormatted.compareTo(startTime) >= 0 &&
              currentHourFormatted.compareTo(endTime) < 0) {
            return true;
          }
        }
      }
    }

    // The restaurant is not open at the current hour
    return false;
  }

  ArticleEntity? getArticleById(String id) {
    for (final category in categories) {
      for (final article in category.articles) {
        if (article.id == id) {
          return article;
        }
      }
    }
    return null;
  }

  @override
  List<Object?> get props {
    return [
      id,
      address,
      categories,
      cuisines,
      deliveryPrice,
      deliveryTime,
      name,
      openingHours,
      radius,
      rating,
      imageUrl,
      reviews,
      sections,
      services,
      offers,
      offer,
      expensiveRating,
      distance,
      deliveryTimeVal,
      priority,
      version,
      location,
      serviceCharge,
      minOrderAmount,
      shopOff,
      type,
      currencySymbol,
    ];
  }

  ShopEntity copyWith({
    String? id,
    String? address,
    List<CategoryEntity>? categories,
    List<String>? cuisines,
    double? deliveryPrice,
    String? deliveryTime,
    String? name,
    List<String>? openingHours,
    double? radius,
    double? rating,
    String? imageUrl,
    double? reviews,
    List<String>? sections,
    List<String>? services,
    List<ShopOffer>? offers,
    Offer? offer,
    int? expensiveRating,
    double? distance,
    double? deliveryTimeVal,
    int? priority,
    String? version,
    LocationEntity? location,
    double? serviceCharge,
    double? minOrderAmount,
    ShopOff? shopOff,
    ShopType? type,
    String? currency_symbol,
  }) {
    return ShopEntity(
      id: id ?? this.id,
      address: address ?? this.address,
      categories: categories ?? this.categories,
      cuisines: cuisines ?? this.cuisines,
      deliveryPrice: deliveryPrice ?? this.deliveryPrice,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      name: name ?? this.name,
      openingHours: openingHours ?? this.openingHours,
      radius: radius ?? this.radius,
      rating: rating ?? this.rating,
      imageUrl: imageUrl ?? this.imageUrl,
      reviews: reviews ?? this.reviews,
      sections: sections ?? this.sections,
      services: services ?? this.services,
      offers: offers ?? this.offers,
      offer: offer ?? this.offer,
      expensiveRating: expensiveRating ?? this.expensiveRating,
      distance: distance ?? this.distance,
      deliveryTimeVal: deliveryTimeVal ?? this.deliveryTimeVal,
      priority: priority ?? this.priority,
      version: version ?? this.version,
      location: location ?? this.location,
      serviceCharge: serviceCharge ?? this.serviceCharge,
      minOrderAmount: minOrderAmount ?? this.minOrderAmount,
      shopOff: shopOff ?? this.shopOff,
      type: type ?? this.type,
      currencySymbol: currency_symbol ?? currencySymbol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'address': address,
      'categories': categories.map((x) => x.toMap()).toList(),
      'cuisines': cuisines,
      'deliveryPrice': deliveryPrice,
      'deliveryTime': deliveryTime,
      'name': name,
      'openingHours': openingHours,
      'radius': radius,
      'rating': rating,
      'imageUrl': imageUrl,
      'reviews': reviews,
      'sections': sections,
      'services': services,
      'offers': offers.map((x) => x.toMap()).toList(),
      'offer': offer?.toMap(),
      'expensiveRating': expensiveRating,
      'distance': distance,
      'deliveryTimeVal': deliveryTimeVal,
      'priority': priority,
      'version': version,
      'location': location?.toMap(),
      'serviceCharge': serviceCharge,
      'minOrderAmount': minOrderAmount,
    };
  }

  factory ShopEntity.fromMap(Map<String, dynamic> map) {
    return ShopEntity(
      id: map['id'] as String,
      address: map['address'] != null ? map['address'] as String : null,
      categories: List<CategoryEntity>.from(
        (map['categories'] as List<int>).map<CategoryEntity>(
          (x) => CategoryEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      cuisines: List<String>.from(map['cuisines'] as List<String>),
      deliveryPrice:
          map['deliveryPrice'] != null ? map['deliveryPrice'] as double : null,
      deliveryTime:
          map['deliveryTime'] != null ? map['deliveryTime'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      openingHours: List<String>.from(map['openingHours'] as List<String>),
      radius: map['radius'] != null ? map['radius'] as double : null,
      rating: map['rating'] != null ? map['rating'] as double : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      reviews: map['reviews'] != null ? map['reviews'] as double : null,
      sections: List<String>.from(map['sections'] as List<String>),
      services: List<String>.from(map['services'] as List<String>),
      offers: List<ShopOffer>.from(
        (map['offers'] as List<int>).map<ShopOffer>(
          (x) => ShopOffer.fromMap(x as Map<String, dynamic>),
        ),
      ),
      offer: map['offer'] != null
          ? Offer.fromMap(map['offer'] as Map<String, dynamic>)
          : null,
      expensiveRating: map['expensiveRating'] as int,
      distance: map['distance'] != null ? map['distance'] as double : null,
      deliveryTimeVal: map['deliveryTimeVal'] != null
          ? map['deliveryTimeVal'] as double
          : null,
      priority: map['priority'] != null ? map['priority'] as int : null,
      version: map['version'] as String,
      location: map['location'] != null
          ? LocationEntity.fromMap(map['location'] as Map<String, dynamic>)
          : null,
      serviceCharge:
          map['serviceCharge'] != null ? map['serviceCharge'] as double : null,
      minOrderAmount: map['minOrderAmount'] != null
          ? map['minOrderAmount'] as double
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopEntity.fromJson(String source) =>
      ShopEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  ShopOffer? getSpecialOfferFor(ArticleEntity item) {
    return offers
        .firstWhereOrNull((element) => element.buyOffer?.element == item.id);
  }
}

///
/// offer
/// when percentage == 100
///
class Offer with EquatableMixin {
  final bool isFlat;
  final double percentage;
  final double maxOff;
  final double targetAmount;
  final double offerAmount;
  const Offer({
    this.isFlat = false,
    this.percentage = 0.0,
    this.maxOff = 0.0,
    this.targetAmount = 0.0,
    this.offerAmount = 0.0,
  });

  Offer copyWith({
    bool? isFlat,
    double? percentage,
    double? maxOff,
    double? targetAmount,
    double? offerAmount,
  }) {
    return Offer(
      isFlat: isFlat ?? this.isFlat,
      percentage: percentage ?? this.percentage,
      maxOff: maxOff ?? this.maxOff,
      targetAmount: targetAmount ?? this.targetAmount,
      offerAmount: offerAmount ?? this.offerAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isFlat': isFlat,
      'percentage': percentage,
      'max_off': maxOff,
      'target_amount': targetAmount,
      'offer_amount': offerAmount,
    };
  }

  factory Offer.fromMap(Map<String, dynamic> map) {
    return Offer(
      isFlat: map['isFlat'] as bool,
      percentage: map['percentage'] as double,
      maxOff: map['max_off'] as double,
      targetAmount: map['target_amount'] as double,
      offerAmount: map['offer_amount'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Offer.fromJson(String source) =>
      Offer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      isFlat,
      percentage,
      maxOff,
      targetAmount,
      offerAmount,
    ];
  }
}

class ShopOffer with EquatableMixin {
  final String? id;
  final ShopOfferBuy? buyOffer;
  final ShopOfferGet? getOffer;
  final Description? name;
  final int? type;
  final bool? c;

  const ShopOffer({
    this.id,
    this.buyOffer,
    this.getOffer,
    this.name,
    this.type,
    this.c,
  });

  ShopOffer copyWith({
    String? id,
    ShopOfferBuy? buyOffer,
    ShopOfferGet? getOffer,
    Description? name,
    int? type,
    bool? c,
  }) {
    return ShopOffer(
      id: id ?? this.id,
      buyOffer: buyOffer ?? this.buyOffer,
      getOffer: getOffer ?? this.getOffer,
      name: name ?? this.name,
      type: type ?? this.type,
      c: c ?? this.c,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'buyOffer': buyOffer?.toMap(),
      'getOffer': getOffer?.toMap(),
      'name': name?.toMap(),
      'type': type,
      'c': c,
    };
  }

  Map<String, dynamic> toMiniMap() {
    return {
      '_id': id,
      // 'buyOffer': buyOffer?.element,
      'get': getOffer?.toMiniMap(),
    };
  }

  factory ShopOffer.fromMap(Map<String, dynamic> map) {
    return ShopOffer(
      id: map['id'] != null ? map['id'] as String : null,
      buyOffer: map['buyOffer'] != null
          ? ShopOfferBuy.fromMap(map['buyOffer'] as Map<String, dynamic>)
          : null,
      getOffer: map['getOffer'] != null
          ? ShopOfferGet.fromMap(map['getOffer'] as Map<String, dynamic>)
          : null,
      name: map['name'] != null
          ? Description.fromMap(map['name'] as Map<String, dynamic>)
          : null,
      type: map['type'] != null ? map['type'] as int : null,
      c: map['c'] != null ? map['c'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopOffer.fromJson(String source) =>
      ShopOffer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      buyOffer,
      getOffer,
      name,
      type,
      c,
    ];
  }
}

class ShopOfferBuy with EquatableMixin {
  const ShopOfferBuy({
    this.element,
    this.name,
    this.quantity,
  });

  ///
  final String? element;

  ///
  final String? name;

  ///
  final int? quantity;

  ShopOfferBuy copyWith({
    String? element,
    String? name,
    int? quantity,
  }) {
    return ShopOfferBuy(
      element: element ?? this.element,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'element': element,
      'name': name,
      'quantity': quantity,
    };
  }

  factory ShopOfferBuy.fromMap(Map<String, dynamic> map) {
    return ShopOfferBuy(
      element: map['element'] != null ? map['element'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopOfferBuy.fromJson(String source) =>
      ShopOfferBuy.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [element, name, quantity];
}

class ShopOfferGet with EquatableMixin {
  final List<ShopOfferGetElement> elements;
  final int? quantity;
  final Set<ShopOfferGetElement> selectedElements;

  int get totalFreeUnitsQty {
    var q = 0;
    for (final e in selectedElements) {
      q += e.freeUnitsQty ?? 0;
    }
    return q;
  }

  const ShopOfferGet({
    this.elements = const [],
    this.quantity,
    this.selectedElements = const {},
  });

  ShopOfferGet copyWith({
    List<ShopOfferGetElement>? elements,
    int? quantity,
    Set<ShopOfferGetElement>? selectedElements,
  }) {
    return ShopOfferGet(
      elements: elements ?? this.elements,
      quantity: quantity ?? this.quantity,
      selectedElements: selectedElements ?? this.selectedElements,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elements': elements.map((x) => x.toMap()).toList(),
      'quantity': quantity,
      'selectedElements': selectedElements.map((x) => x.toMap()).toList(),
    };
  }

  List<Map<String, dynamic>> toMiniMap() {
    return selectedElements.map((x) => x.toMiniMap()).toList();
  }

  factory ShopOfferGet.fromMap(Map<String, dynamic> map) {
    return ShopOfferGet(
      elements: List<ShopOfferGetElement>.from(
        (map['elements'] as List<int>).map<ShopOfferGetElement>(
          (x) => ShopOfferGetElement.fromMap(x as Map<String, dynamic>),
        ),
      ),
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      selectedElements: Set<ShopOfferGetElement>.from(
        (map['selectedElements'] as List<int>).map<ShopOfferGetElement>(
          (x) => ShopOfferGetElement.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopOfferGet.fromJson(String source) =>
      ShopOfferGet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        elements,
        quantity,
        selectedElements,
      ];
}

class ShopOfferGetElement with EquatableMixin {
  final String? id;
  final double? discount;
  final String? name;
  final int? freeUnitsQty;

  const ShopOfferGetElement({
    this.id,
    this.discount,
    this.name,
    this.freeUnitsQty,
  });

  ShopOfferGetElement copyWith({
    String? id,
    double? discount,
    String? name,
    int? freeUnitsQty,
  }) {
    return ShopOfferGetElement(
      id: id ?? this.id,
      discount: discount ?? this.discount,
      name: name ?? this.name,
      freeUnitsQty: freeUnitsQty ?? this.freeUnitsQty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'discount': discount,
      'name': name,
      'quantity': freeUnitsQty,
    };
  }

  Map<String, dynamic> toMiniMap() {
    return <String, dynamic>{
      '_id': id,
      'qty': freeUnitsQty,
    };
  }

  factory ShopOfferGetElement.fromMap(Map<String, dynamic> map) {
    return ShopOfferGetElement(
      id: map['id'] != null ? map['id'] as String : null,
      discount: map['discount'] != null ? map['discount'] as double : null,
      name: map['name'] != null ? map['name'] as String : null,
      freeUnitsQty: map['quantity'] != null ? map['quantity'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopOfferGetElement.fromJson(String source) =>
      ShopOfferGetElement.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, freeUnitsQty, discount, name];
}

class ShopOff with EquatableMixin {
  ShopOff({
    this.offerType,
    this.offerAmount,
    this.targetAmount,
    this.maxOff,
  });

  final int? offerType;
  final double? offerAmount;
  final double? targetAmount;
  final double? maxOff;

  @override
  List<Object?> get props => [offerType, offerAmount, targetAmount, maxOff];
}
