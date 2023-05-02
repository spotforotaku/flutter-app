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
  final String releaseDate;
  final String status;
  final List<String> genres;
  final String otherNames;
  final String sypnosis;
  final String animeImg;
  final String episodesAvailable;
  final List<Episode> episodesList;

  AnimeDetails({
    required this.animeTitle,
    required this.type,
    required this.releaseDate,
    required this.status,
    required this.genres,
    required this.otherNames,
    required this.sypnosis,
    required this.animeImg,
    required this.episodesAvailable,
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
