import 'package:json_annotation/json_annotation.dart';

part "recommendations.g.dart";

@JsonSerializable()
class Recommendations {
  final List<String> rec1;
  final List<String> rec2;

  Recommendations({
    required this.rec1,
    required this.rec2,
  });

  factory Recommendations.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationsToJson(this);
}
