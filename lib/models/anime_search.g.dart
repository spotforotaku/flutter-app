// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeSearch _$AnimeSearchFromJson(Map<String, dynamic> json) => AnimeSearch(
      animeId: json['animeId'] as String,
      animeTitle: json['animeTitle'] as String,
      animeImg: json['animeImg'] as String,
      animeUrl: json['animeUrl'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$AnimeSearchToJson(AnimeSearch instance) =>
    <String, dynamic>{
      'animeId': instance.animeId,
      'animeTitle': instance.animeTitle,
      'animeImg': instance.animeImg,
      'animeUrl': instance.animeUrl,
      'status': instance.status,
    };
