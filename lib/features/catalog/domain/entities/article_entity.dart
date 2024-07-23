// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  const ArticleEntity({
    required this.id,
    required this.price,
    required this.image,
    required this.title,
    this.quantity = 0,
    this.description,
    this.maxAddon,
    this.minAddon,
    this.addons = const [],
    this.basePacks = const [],
    this.maxQtyToBuy = 1,
    this.discountPercentage = 0,
    this.isOutOfStock = false,
    this.visible = true,
    this.priceAfterDiscount = 0,
  });

  factory ArticleEntity.fromMap(Map<String, dynamic> map) {
    return ArticleEntity(
      id: map['id'] as String,
      quantity: map['quantity'] as int,
      price: map['price'] as double,
      image: map['image'] != null ? map['image'] as String : null,
      title: map['title'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      maxAddon: map['maxAddon'] != null ? map['maxAddon'] as int : null,
      minAddon: map['minAddon'] != null ? map['minAddon'] as int : null,
      addons: List<AddonEntity>.from(
        (map['addons'] as List<int>).map<AddonEntity>(
          (x) => AddonEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      basePacks: List<BasePackEntity>.from(
        (map['basePacks'] as List<int>).map<BasePackEntity>(
          (x) => BasePackEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      maxQtyToBuy: map['maxQtyToBuy'] as int,
      discountPercentage: map['discountPercentage'] as double,
      isOutOfStock: map['isOutOfStock'] as bool,
      visible: map['visible'] as bool,
      priceAfterDiscount: map['priceAfterDiscount'] as double,
    );
  }

  factory ArticleEntity.fromJson(String source) =>
      ArticleEntity.fromMap(json.decode(source) as Map<String, dynamic>);
  final String id;
  final int quantity;
  final double price;
  final String? image;
  final String title;
  final String? description;
  final int? maxAddon;
  final int? minAddon;
  final List<AddonEntity> addons;
  final List<BasePackEntity> basePacks;
  final int maxQtyToBuy;
  final double discountPercentage;
  final bool isOutOfStock;
  final bool visible;
  final double priceAfterDiscount;

  double get calculateTotal {
    return basePacks.fold(
      0,
      (previousValue, element) => previousValue + element.price,
    );
  }

  ArticleEntity copyWith({
    String? id,
    int? quantity,
    double? price,
    String? image,
    String? title,
    String? description,
    int? maxAddon,
    int? minAddon,
    List<AddonEntity>? addons,
    List<BasePackEntity>? basePacks,
    int? maxQtyToBuy,
    double? discountPercentage,
    bool? isOutOfStock,
    bool? visible,
    double? priceAfterDiscount,
  }) {
    return ArticleEntity(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
      maxAddon: maxAddon ?? this.maxAddon,
      minAddon: minAddon ?? this.minAddon,
      addons: addons ?? this.addons,
      basePacks: basePacks ?? this.basePacks,
      maxQtyToBuy: maxQtyToBuy ?? this.maxQtyToBuy,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      isOutOfStock: isOutOfStock ?? this.isOutOfStock,
      visible: visible ?? this.visible,
      priceAfterDiscount: priceAfterDiscount ?? this.priceAfterDiscount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quantity': quantity,
      'price': price,
      'image': image,
      'title': title,
      'description': description,
      'maxAddon': maxAddon,
      'minAddon': minAddon,
      'addons': addons.map((x) => x.toMap()).toList(),
      'basePacks': basePacks.map((x) => x.toMap()).toList(),
      'maxQtyToBuy': maxQtyToBuy,
      'discountPercentage': discountPercentage,
      'isOutOfStock': isOutOfStock,
      'visible': visible,
      'priceAfterDiscount': priceAfterDiscount,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      quantity,
      price,
      image,
      title,
      description,
      maxAddon,
      minAddon,
      addons,
      basePacks,
      maxQtyToBuy,
      discountPercentage,
      isOutOfStock,
      visible,
      priceAfterDiscount,
    ];
  }
}

class AddonEntity with EquatableMixin {
  final String? id;
  final String? name;
  final double? price;
  final int? visibility;
  const AddonEntity({
    this.id,
    this.name,
    this.price,
    this.visibility,
  });

  AddonEntity copyWith({
    String? id,
    String? name,
    double? price,
    int? visibility,
  }) {
    return AddonEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      visibility: visibility ?? this.visibility,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'visibility': visibility,
    };
  }

  factory AddonEntity.fromMap(Map<String, dynamic> map) {
    return AddonEntity(
      id: map['id'] as String?,
      name: map['name'] != null ? map['name'] as String : null,
      price: map['price'] != null ? map['price'] as double : null,
      visibility: map['visibility'] != null ? map['visibility'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddonEntity.fromJson(String source) =>
      AddonEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, price, visibility];
}

class BasePackEntity with EquatableMixin {
  final String? id;
  final String? description;
  final int? min;
  final int? max;
  final String? name;
  final List<SubPackEntity> subPacks;
  final BasePackType? type;
  final Set<SubPackEntity> selectedSubPacks;

  bool get isRequired => min != null && min! > 0;
  double get price {
    var p = 0.0;
    for (final subPack in selectedSubPacks) {
      p += subPack.price ?? 0;
    }
    return p;
  }

  const BasePackEntity({
    this.id,
    this.description,
    this.min,
    this.max,
    this.name,
    this.subPacks = const [],
    this.type,
    this.selectedSubPacks = const {},
  });

  BasePackEntity copyWith({
    String? id,
    String? description,
    int? min,
    int? max,
    String? name,
    List<SubPackEntity>? subPacks,
    BasePackType? type,
    Set<SubPackEntity>? selectedSubPacks,
  }) {
    return BasePackEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      min: min ?? this.min,
      max: max ?? this.max,
      name: name ?? this.name,
      subPacks: subPacks ?? this.subPacks,
      type: type ?? this.type,
      selectedSubPacks: selectedSubPacks != null
          ? {...selectedSubPacks}
          : this.selectedSubPacks,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'description': description,
      'min': min,
      'max': max,
      'name': name,
      'subPacks': subPacks.map((x) => x.toMap()).toList(),
      'type': type?.toMap(),
      'selectedSubPacks': selectedSubPacks.map((x) => x.toMap()).toList(),
    };
  }

  factory BasePackEntity.fromMap(Map<String, dynamic> map) {
    return BasePackEntity(
      id: map['id'] != null ? map['id'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      min: map['min'] != null ? map['min'] as int : null,
      max: map['max'] != null ? map['max'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      subPacks: List<SubPackEntity>.from(
        (map['subPacks'] as List<int>).map<SubPackEntity>(
          (x) => SubPackEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      type: map['type'] != null
          ? BasePackType.fromMap(map['type'] as String)
          : null,
      selectedSubPacks: Set<SubPackEntity>.from(
        (map['selectedSubPacks'] as List<int>).map<SubPackEntity>(
          (x) => SubPackEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BasePackEntity.fromJson(String source) =>
      BasePackEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      description,
      min,
      max,
      name,
      subPacks,
      type,
      selectedSubPacks,
    ];
  }
}

class SubPackEntity with EquatableMixin {
  final String? id;
  final String? name;
  final double? price;
  final int? visibility;
  final int? quantity;
  const SubPackEntity({
    this.id = '',
    this.name,
    this.price,
    this.visibility,
    this.quantity,
  });

  SubPackEntity copyWith({
    String? id,
    String? name,
    double? price,
    int? visibility,
    int? quantity,
  }) {
    return SubPackEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      visibility: visibility ?? this.visibility,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'visibility': visibility,
      'quantity': quantity,
    };
  }

  factory SubPackEntity.fromMap(Map<String, dynamic> map) {
    return SubPackEntity(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      price: map['price'] != null ? map['price'] as double : null,
      visibility: map['visibility'] != null ? map['visibility'] as int : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubPackEntity.fromJson(String source) =>
      SubPackEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      price,
      visibility,
      quantity,
    ];
  }
}

enum BasePackType {
  none,
  single,
  multiple,
  ;

  String toMap() {
    return name;
  }

  static BasePackType fromMap(String map) {
    switch (map) {
      case 'SING':
      case 'Single':
      case 'signle':
      case 'single':
        return BasePackType.single;
      case 'Duo':
      case 'Multilple':
      case 'Multipe':
      case 'Multiple':
      case 'Multiples':
      case 'Mutiple':
      case 'Pizzas':
      case 'multipe':
      case 'multiple':
      case 'multiples':
      case 'multiple':
        return BasePackType.multiple;
      default:
        return BasePackType.none;
    }
  }
}
