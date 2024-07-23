// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:catalog_sample/features/catalog/domain/entities/section_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/service_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/shop_entity.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:realm/realm.dart';

class CatalogEntity with EquatableMixin {
  final String id;
  final List<ShopEntity> shops;
  final List<SectionEntity> sections;
  final List<FoodServiceEntity> services;
  final String version;
  final List<ObjectId?> ids;

  const CatalogEntity({
    this.id = '',
    this.shops = const [],
    this.sections = const [],
    this.services = const [],
    this.ids = const [],
    this.version = '',
  });

  ShopEntity? findShopById(String id) {
    return shops.firstWhereOrNull((element) => element.id == id);
  }

  CatalogEntity copyWith({
    String? id,
    List<ShopEntity>? shops,
    List<SectionEntity>? sections,
    List<FoodServiceEntity>? services,
    String? version,
    List<ObjectId>? ids,
  }) {
    return CatalogEntity(
      id: id ?? this.id,
      shops: shops ?? this.shops,
      sections: sections ?? this.sections,
      services: services ?? this.services,
      version: version ?? this.version,
      ids: ids ?? this.ids,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'shops': shops.map((x) => x.toMap()).toList(),
      'sections': sections.map((x) => x.toMap()).toList(),
      'services': services.map((x) => x.toMap()).toList(),
      'version': version,
    };
  }

  factory CatalogEntity.fromMap(Map<String, dynamic> map) {
    return CatalogEntity(
      id: map['id'] as String,
      shops: List<ShopEntity>.from(
        (map['shops'] as List<int>).map<ShopEntity>(
          (x) => ShopEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      sections: List<SectionEntity>.from(
        (map['sections'] as List<int>).map<SectionEntity>(
          (x) => SectionEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      services: List<FoodServiceEntity>.from(
        (map['services'] as List<int>).map<FoodServiceEntity>(
          (x) => FoodServiceEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      version: map['version'] as String? ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CatalogEntity.fromJson(String source) =>
      CatalogEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      shops,
      sections,
      services,
      version,
      ids,
    ];
  }
}
