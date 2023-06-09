import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:otaku/models/anime_details.dart';
import 'package:otaku/models/anime_search.dart';
import 'package:otaku/models/popular_anime.dart';
import 'package:otaku/models/recently_released.dart';
import 'package:otaku/models/top_airing.dart';
import 'package:velocity_x/velocity_x.dart';

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
    var temp = TopAiring.getListFromJson(resp.body);

    return List<TopAiring>.from(
      temp.filter(
        (element) => element.animeTitle.isNotEmpty,
      ),
    );
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
    var temp = RecentlyReleased.getListFromJson(resp.body);

    return List<RecentlyReleased>.from(
      temp.filter(
        (element) => element.animeTitle.isNotEmpty,
      ),
    );
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
    var temp = PopularAnime.getListFromJson(resp.body);

    return List<PopularAnime>.from(
      temp.filter(
        (element) => element.animeTitle.isNotEmpty,
      ),
    );
  }

  static Future<AnimeSearch> getAnimeIdByName(
      {required String animeName, int page = 1}) async {
    var uri = Uri.https(
      _backendUri,
      "search",
      {
        "page": "$page",
        "keyw": animeName,
      },
    );
    var resp = await _getRequest(uri);
    var temp = AnimeSearch.getListFromJson(resp.body);

    return temp[0];
  }

  static Future<AnimeDetails> getAnimeDetails(String animeId) async {
    print("getting anime details for $animeId");
    print("anime-details/$animeId");
    var uri = Uri.https(
      _backendUri,
      "anime-details/$animeId",
    );
    var resp = await _getRequest(uri);
    // print(jsonDecode(resp.body));
    AnimeDetails animeDetails = AnimeDetails.fromJson(
      jsonDecode(resp.body),
    );
    print("anime deatils");
    print(animeDetails);
    return animeDetails;
  }
}
