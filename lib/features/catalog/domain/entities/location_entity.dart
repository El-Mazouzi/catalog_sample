// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class LocationEntity with EquatableMixin {
  const LocationEntity({
    required this.latitude,
    required this.longitude,
  });

  factory LocationEntity.empty() =>
      const LocationEntity(latitude: 0, longitude: 0);

  final double latitude;
  final double longitude;

  bool get isEmpty => this == LocationEntity.empty();

  Map<String, dynamic> toJson() {
    return {
      'lng': longitude,
      'lat': latitude,
    };
  }

  @override
  String toString() =>
      'LocationEntity(latitude: $latitude, longitude: $longitude)';

  LocationEntity copyWith({
    double? latitude,
    double? longitude,
  }) {
    return LocationEntity(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory LocationEntity.fromMap(Map<String, dynamic> map) {
    return LocationEntity(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }

  factory LocationEntity.fromJson(String source) =>
      LocationEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [latitude, longitude];
}
