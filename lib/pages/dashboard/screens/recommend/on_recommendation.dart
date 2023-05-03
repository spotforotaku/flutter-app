import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:otaku/models/recommendations.dart';
import 'package:otaku/pages/dashboard/screens/home/anime_grid.dart';
import 'package:otaku/services/anime_api.dart';
import 'package:otaku/shared/loading.dart';
import 'package:http/http.dart' as http;

class OnRecommendation extends StatelessWidget {
  final String animeName;
  final _backendUri = "192.168.31.208:4000";

  const OnRecommendation({
    super.key,
    required this.animeName,
  });

  Future<List<String>> getRecs() async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    // print("Sending req for $animeName");
    // var uri = Uri.http(_backendUri, "content");
    // var resp = await http.post(
    //   uri,
    //   body: jsonEncode({
    //     "anime": animeName,
    //   }),
    //   headers: headers,
    // );

    await Future.delayed(Duration(seconds: 2));

    // if (resp.statusCode != 200) {
    return [
      "One Piece",
      "My Hero Academia",
      "One Piece",
      "My Hero Academia",
      "One Piece",
      "My Hero Academia",
      "One Piece",
      "My Hero Academia"
    ];
    // }

    // Recommendations recs = Recommendations.fromJson(jsonDecode(resp.body));
    // print(recs.rec1 + recs.rec2);
    // return recs.rec1 + recs.rec2;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRecs(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print("error");
          print(snapshot.error);

          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text(
                "Sorry, there was an error 💀",
              ),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        }

        if (snapshot.hasData) {
          var data = snapshot.data!;

          if (data.isEmpty) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Text(
                  "Sorry, we couldn't find any recommendations for the anime that you asked 😥",
                ),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text("We think you will like these animes"),
            ),
            body: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return FutureBuilder(
                  future: AnimeApi.getAnimeIdByName(
                    animeName: data[index],
                  ),
                  builder: ((context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("Error while loading");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading...");
                    } else {
                      if (snapshot.hasData) {
                        var anime = snapshot.data!;
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimeCard(anime: anime),
                            ],
                          ),
                        );
                      }
                      return Text("Can't load image.");
                    }
                  }),
                );
              },
            ),
          );
        }

        return Scaffold(
          body: Center(
            child: Text(
              "Sorry, we couldn't find any recommendations for the anime that you asked.",
            ),
          ),
        );
      },
    );
  }
}
