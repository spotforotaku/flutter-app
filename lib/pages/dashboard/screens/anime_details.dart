import 'package:flutter/material.dart';
import 'package:otaku/services/anime_api.dart';

class AnimeDetailsScreen extends StatelessWidget {
  final String animeTitle;

  const AnimeDetailsScreen({
    super.key,
    required this.animeTitle,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AnimeApi.getAnimeDetails(
        animeTitle,
      ),
      builder: ((context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text(
                "Error... 💀",
              ),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text(
                "Loading... ⏳",
              ),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.pink,
            ),
          ),
          extendBodyBehindAppBar: true,
          body: Center(
            child: Text(
              animeTitle,
            ),
          ),
        );
      }),
    );
  }
}
