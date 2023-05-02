import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part "top_airing.g.dart";

@JsonSerializable()
class TopAiring {
  final String animeId;
  final String animeTitle;
  final String animeImg;
  final String latestEp;
  final String animeUrl;
  final List<String> genres;

  TopAiring({
    required this.animeId,
    required this.animeTitle,
    required this.animeImg,
    required this.latestEp,
    required this.animeUrl,
    required this.genres,
  });

  factory TopAiring.fromJson(Map<String, dynamic> json) =>
      _$TopAiringFromJson(json);

  Map<String, dynamic> toJson() => _$TopAiringToJson(this);

  static List<TopAiring> getListFromJson(String data) {
    Iterable l = jsonDecode(data);
    return List<TopAiring>.from(
      l.map(
        (e) => TopAiring.fromJson(e),
      ),
    );
  }
}
