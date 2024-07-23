// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Description extends Equatable {
  const Description({
    this.fr,
    this.ar,
    this.en,
    this.name,
  });

  String? getValue(String languageCode) {
    return toMap()[languageCode] as String?;
  }

  factory Description.fromMap(Map<String, dynamic> map) {
    return Description(
      fr: map['fr'] != null ? map['fr'] as String : null,
      ar: map['ar'] != null ? map['ar'] as String : null,
      en: map['en'] != null ? map['en'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  factory Description.fromJson(String source) =>
      Description.fromMap(json.decode(source) as Map<String, dynamic>);
  final String? fr;
  final String? ar;
  final String? en;
  final String? name;

  Description copyWith({
    String? fr,
    String? ar,
    String? en,
    String? name,
  }) {
    return Description(
      fr: fr ?? this.fr,
      ar: ar ?? this.ar,
      en: en ?? this.en,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fr': fr,
      'ar': ar,
      'en': en,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [fr, ar, en, name];

  factory Description.fromName(String? name) {
    return Description(
      ar: name,
      fr: name,
      en: name,
      name: name,
    );
  }
}
