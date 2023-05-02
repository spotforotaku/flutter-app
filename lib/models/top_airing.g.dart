// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_airing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopAiring _$TopAiringFromJson(Map<String, dynamic> json) => TopAiring(
      animeId: json['animeId'] as String,
      animeTitle: json['animeTitle'] as String,
      animeImg: json['animeImg'] as String,
      latestEp: json['latestEp'] as String,
      animeUrl: json['animeUrl'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TopAiringToJson(TopAiring instance) => <String, dynamic>{
      'animeId': instance.animeId,
      'animeTitle': instance.animeTitle,
      'animeImg': instance.animeImg,
      'latestEp': instance.latestEp,
      'animeUrl': instance.animeUrl,
      'genres': instance.genres,
    };
