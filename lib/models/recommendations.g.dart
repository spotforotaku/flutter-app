// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recommendations _$RecommendationsFromJson(Map<String, dynamic> json) =>
    Recommendations(
      rec1: (json['rec1'] as List<dynamic>).map((e) => e as String).toList(),
      rec2: (json['rec2'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RecommendationsToJson(Recommendations instance) =>
    <String, dynamic>{
      'rec1': instance.rec1,
      'rec2': instance.rec2,
    };
