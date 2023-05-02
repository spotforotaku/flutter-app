// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDetails _$AnimeDetailsFromJson(Map<String, dynamic> json) => AnimeDetails(
      animeTitle: json['animeTitle'] as String,
      type: json['type'] as String,
      releasedDate: json['releasedDate'] as String,
      status: json['status'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      otherNames: json['otherNames'] as String,
      synopsis: json['synopsis'] as String,
      animeImg: json['animeImg'] as String,
      totalEpisodes: json['totalEpisodes'] as String,
      episodesList: (json['episodesList'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeDetailsToJson(AnimeDetails instance) =>
    <String, dynamic>{
      'animeTitle': instance.animeTitle,
      'type': instance.type,
      'releasedDate': instance.releasedDate,
      'status': instance.status,
      'genres': instance.genres,
      'otherNames': instance.otherNames,
      'synopsis': instance.synopsis,
      'animeImg': instance.animeImg,
      'totalEpisodes': instance.totalEpisodes,
      'episodesList': instance.episodesList.map((e) => e.toJson()).toList(),
    };
