import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:otaku/models/popular_anime.dart';
import 'package:otaku/models/recently_released.dart';
import 'package:otaku/models/top_airing.dart';

class AnimeApi {
  static const _backendUri = "gogoanime-api-production-3d9f.up.railway.app";

  static Future<http.Response> _getRequest(Uri uri) async {
    return await http.get(uri);
  }

  static Future<List<TopAiring>> getTopAiring({int page = 1}) async {
    var uri = Uri.https(
      _backendUri,
      "top-airing",
      {
        "page": "$page",
      },
    );
    var resp = await _getRequest(uri);
    return TopAiring.getListFromJson(resp.body);
  }

  static Future<List<RecentlyReleased>> getRecentlyReleased(
      {int page = 1}) async {
    var uri = Uri.https(
      _backendUri,
      "recent-release",
      {
        "page": "$page",
      },
    );
    var resp = await _getRequest(uri);
    return RecentlyReleased.getListFromJson(resp.body);
  }

  static Future<List<PopularAnime>> getPopular({int page = 1}) async {
    var uri = Uri.https(
      _backendUri,
      "popular",
      {
        "page": "$page",
      },
    );
    var resp = await _getRequest(uri);
    return PopularAnime.getListFromJson(resp.body);
  }
}
