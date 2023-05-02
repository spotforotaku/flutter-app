import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part "recently_released.g.dart";

@JsonSerializable()
class RecentlyReleased {
  final String episodeId;
  final String animeTitle;
  final String episodeNum;
  final String subOrDub;
  final String animeImg;
  final String episodeUrl;

  RecentlyReleased({
    required this.episodeId,
    required this.animeTitle,
    required this.episodeNum,
    required this.subOrDub,
    required this.animeImg,
    required this.episodeUrl,
  });

  factory RecentlyReleased.fromJson(Map<String, dynamic> json) =>
      _$RecentlyReleasedFromJson(json);

  Map<String, dynamic> toJson() => _$RecentlyReleasedToJson(this);

  static List<RecentlyReleased> getListFromJson(String data) {
    Iterable l = jsonDecode(data);
    return List<RecentlyReleased>.from(
      l.map(
        (e) => RecentlyReleased.fromJson(e),
      ),
    );
  }
}
