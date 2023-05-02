import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part "popular_anime.g.dart";

@JsonSerializable()
class PopularAnime {
  final String animeId;
  final String animeTitle;
  final String animeImg;
  final String animeUrl;
  final String releasedDate;

  PopularAnime({
    required this.animeId,
    required this.animeTitle,
    required this.animeImg,
    required this.animeUrl,
    required this.releasedDate,
  });

  factory PopularAnime.fromJson(Map<String, dynamic> json) =>
      _$PopularAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$PopularAnimeToJson(this);

  // static List<PopularAnime> getListFromJson(String data) {
  //   Iterable l = jsonDecode(data);
  //   return List<PopularAnime>.from(
  //     l.map(
  //       (e) => PopularAnime.fromJson(e),
  //     ),
  //   );
  // }
}
