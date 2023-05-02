import 'dart:convert';

import 'package:http/http.dart' as http;
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
    print("response");
    Iterable l = jsonDecode(resp.body);
    List<TopAiring> topAiring = List<TopAiring>.from(
      l.map(
        (e) => TopAiring.fromJson(e),
      ),
    );
    return topAiring;
  }
}
