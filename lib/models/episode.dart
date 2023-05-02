import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part "episode.g.dart";

@JsonSerializable()
class Episode {
  final String episodeId;
  final String episodeNum;
  final String episodeUrl;

  Episode({
    required this.episodeId,
    required this.episodeNum,
    required this.episodeUrl,
  });

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}
