import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part "anime_search.g.dart";

@JsonSerializable()
class AnimeSearch {
  final String animeId;
  final String animeTitle;
  final String animeImg;
  final String animeUrl;
  final String status;

  AnimeSearch({
    required this.animeId,
    required this.animeTitle,
    required this.animeImg,
    required this.animeUrl,
    required this.status,
  });

  factory AnimeSearch.fromJson(Map<String, dynamic> json) =>
      _$AnimeSearchFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeSearchToJson(this);

  static List<AnimeSearch> getListFromJson(String data) {
    Iterable l = jsonDecode(data);
    return List<AnimeSearch>.from(
      l.map(
        (e) => AnimeSearch.fromJson(e),
      ),
    );
  }
}
