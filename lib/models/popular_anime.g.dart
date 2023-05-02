// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularAnime _$PopularAnimeFromJson(Map<String, dynamic> json) => PopularAnime(
      animeId: json['animeId'] as String,
      animeTitle: json['animeTitle'] as String,
      animeImg: json['animeImg'] as String,
      animeUrl: json['animeUrl'] as String,
      releasedDate: json['releasedDate'] as String,
    );

Map<String, dynamic> _$PopularAnimeToJson(PopularAnime instance) =>
    <String, dynamic>{
      'animeId': instance.animeId,
      'animeTitle': instance.animeTitle,
      'animeImg': instance.animeImg,
      'animeUrl': instance.animeUrl,
      'releasedDate': instance.releasedDate,
    };
