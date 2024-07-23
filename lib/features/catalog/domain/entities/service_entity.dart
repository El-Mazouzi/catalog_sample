// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:catalog_sample/features/catalog/domain/entities/description.dart';
import 'package:equatable/equatable.dart';

class FoodServiceEntity extends Equatable {
  final String? sId;
  final String? name;
  final Description? displayName;
  final double? order;
  final String? imageUrl;
  final String? newImageService;
  final bool? isDarkStore;
  final bool? isDefault;
  const FoodServiceEntity({
    this.sId,
    this.name,
    this.displayName,
    this.order,
    this.imageUrl,
    this.newImageService,
    this.isDarkStore,
    this.isDefault,
  });

  FoodServiceEntity copyWith({
    String? sId,
    String? name,
    Description? displayName,
    double? order,
    String? imageUrl,
    String? newImageService,
    bool? isDarkStore,
    bool? isDefault,
  }) {
    return FoodServiceEntity(
      sId: sId ?? this.sId,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      order: order ?? this.order,
      imageUrl: imageUrl ?? this.imageUrl,
      newImageService: newImageService ?? this.newImageService,
      isDarkStore: isDarkStore ?? this.isDarkStore,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': sId,
      'name': name,
      'displayName': displayName?.toMap(),
      'order': order,
      'imageUrl': imageUrl,
      'new_image_service': newImageService,
      'isDarkStore': isDarkStore,
      'isDefault': isDefault,
    };
  }

  factory FoodServiceEntity.fromMap(Map<String, dynamic> map) {
    return FoodServiceEntity(
      sId: map['_id'] != null ? map['_id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      displayName: map['displayName'] != null
          ? Description.fromMap(map['displayName'] as Map<String, dynamic>)
          : null,
      order: map['order'] != null ? map['order'] as double : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      newImageService: map['new_image_service'] != null
          ? map['new_image_service'] as String
          : null,
      isDarkStore:
          map['isDarkStore'] != null ? map['isDarkStore'] as bool : null,
      isDefault: map['isDefault'] != null ? map['isDefault'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodServiceEntity.fromJson(String source) =>
      FoodServiceEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      sId,
      name,
      displayName,
      order,
      imageUrl,
      newImageService,
      isDarkStore,
      isDefault,
    ];
  }
}
