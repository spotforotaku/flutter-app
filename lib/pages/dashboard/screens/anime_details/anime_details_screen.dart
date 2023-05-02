import 'package:flutter/material.dart';
import 'package:otaku/services/anime_api.dart';
import 'package:otaku/shared/loading.dart';

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
          return Loading();
        }

        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
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