// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_released.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentlyReleased _$RecentlyReleasedFromJson(Map<String, dynamic> json) =>
    RecentlyReleased(
      episodeId: json['episodeId'] as String,
      animeTitle: json['animeTitle'] as String,
      animeId: json['animeId'] as String,
      episodeNum: json['episodeNum'] as String,
      subOrDub: json['subOrDub'] as String,
      animeImg: json['animeImg'] as String,
      episodeUrl: json['episodeUrl'] as String,
    );

Map<String, dynamic> _$RecentlyReleasedToJson(RecentlyReleased instance) =>
    <String, dynamic>{
      'episodeId': instance.episodeId,
      'animeTitle': instance.animeTitle,
      'animeId': instance.animeId,
      'episodeNum': instance.episodeNum,
      'subOrDub': instance.subOrDub,
      'animeImg': instance.animeImg,
      'episodeUrl': instance.episodeUrl,
    };
