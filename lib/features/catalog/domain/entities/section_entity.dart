// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:catalog_sample/features/catalog/domain/entities/description.dart';
import 'package:equatable/equatable.dart';

class SectionEntity extends Equatable {
  final String? uid;
  final String? name;
  final Description? displayName;
  final Description? description;
  final double? order;
  const SectionEntity({
    this.uid,
    this.name,
    this.displayName,
    this.description,
    this.order,
  });
  @override
  List<Object?> get props {
    return [
      uid,
      name,
      displayName,
      description,
      order,
    ];
  }

  SectionEntity copyWith({
    String? uid,
    String? name,
    Description? displayName,
    Description? description,
    double? order,
  }) {
    return SectionEntity(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      order: order ?? this.order,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'displayName': displayName?.toMap(),
      'description': description?.toMap(),
      'order': order,
    };
  }

  factory SectionEntity.fromMap(Map<String, dynamic> map) {
    return SectionEntity(
      uid: map['_id'] != null ? map['_id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      displayName: map['displayName'] != null
          ? Description.fromMap(map['displayName'] as Map<String, dynamic>)
          : null,
      description: map['description'] != null
          ? Description.fromMap(map['description'] as Map<String, dynamic>)
          : null,
      order: map['order'] != null ? map['order'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SectionEntity.fromJson(String source) =>
      SectionEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
