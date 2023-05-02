import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:otaku/models/episode.dart';

part "anime_details.g.dart";

@JsonSerializable(
  explicitToJson: true,
)
class AnimeDetails {
  final String animeTitle;
  final String type;
  final String releasedDate;
  final String status;
  final List<String> genres;
  final String otherNames;
  final String synopsis;
  final String animeImg;
  final String totalEpisodes;
  final List<Episode> episodesList;

  AnimeDetails({
    required this.animeTitle,
    required this.type,
    required this.releasedDate,
    required this.status,
    required this.genres,
    required this.otherNames,
    required this.synopsis,
    required this.animeImg,
    required this.totalEpisodes,
    required this.episodesList,
  });

  factory AnimeDetails.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDetailsToJson(this);

  static List<AnimeDetails> getListFromJson(String data) {
    Iterable l = jsonDecode(data);
    return List<AnimeDetails>.from(
      l.map(
        (e) => AnimeDetails.fromJson(e),
      ),
    );
  }
}
