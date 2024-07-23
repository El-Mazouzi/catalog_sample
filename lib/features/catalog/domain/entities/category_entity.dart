// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:catalog_sample/features/catalog/domain/entities/article_entity.dart';
import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final String title;
  final List<ArticleEntity> articles;
  final double? order;
  final String? parent;
  final String? image;
  final String? id;

  const CategoryEntity({
    required this.id,
    required this.image,
    required this.title,
    required this.articles,
    this.order,
    this.parent,
  });

  @override
  List<Object?> get props => [title, articles, order, parent];

  CategoryEntity copyWith({
    String? category,
    List<ArticleEntity>? articles,
    double? order,
    String? parent,
    String? image,
    String? id,
  }) {
    return CategoryEntity(
      id: id ?? this.id,
      title: category ?? title,
      articles: articles ?? this.articles,
      order: order ?? this.order,
      parent: parent ?? this.parent,
      image: image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': title,
      'items': articles.map((x) => x.toMap()).toList(),
      'order': order,
      'parent': parent,
      'image': image,
    };
  }

  factory CategoryEntity.fromMap(Map<String, dynamic> map) {
    return CategoryEntity(
      id: map['id'] as String?,
      title: map['category'] as String,
      articles: List<ArticleEntity>.from(
        (map['items'] as List<int>).map<ArticleEntity>(
          (x) => ArticleEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      order: map['order'] != null ? map['order'] as double : null,
      parent: map['parent'] != null ? map['parent'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryEntity.fromJson(String source) =>
      CategoryEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
