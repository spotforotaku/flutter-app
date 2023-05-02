import 'package:http/http.dart' as http;

class AnimeApi {
  static const _backendUri = "gogoanime-api-production-3d9f.up.railway.app";

  static Future<http.Response> _getRequest(Uri uri) async {
    return await http.get(uri);
  }

  static getPopular({int page = 1}) async {
    var uri = Uri.https(
      _backendUri,
      "popular",
      {
        "page": "$page",
      },
    );
    var resp = await _getRequest(uri);
    print("response");
    print(resp.body);
  }
}
