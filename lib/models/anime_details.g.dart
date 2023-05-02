// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDetails _$AnimeDetailsFromJson(Map<String, dynamic> json) => AnimeDetails(
      animeTitle: json['animeTitle'] as String,
      type: json['type'] as String,
      releaseDate: json['releaseDate'] as String,
      status: json['status'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      otherNames: json['otherNames'] as String,
      sypnosis: json['sypnosis'] as String,
      animeImg: json['animeImg'] as String,
      episodesAvailable: json['episodesAvailable'] as String,
      episodesList: (json['episodesList'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeDetailsToJson(AnimeDetails instance) =>
    <String, dynamic>{
      'animeTitle': instance.animeTitle,
      'type': instance.type,
      'releaseDate': instance.releaseDate,
      'status': instance.status,
      'genres': instance.genres,
      'otherNames': instance.otherNames,
      'sypnosis': instance.sypnosis,
      'animeImg': instance.animeImg,
      'episodesAvailable': instance.episodesAvailable,
      'episodesList': instance.episodesList.map((e) => e.toJson()).toList(),
    };
