import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/pages/dashboard/screens/anime_details/description/description_screen.dart';
import 'package:otaku/services/anime_api.dart';
import 'package:otaku/shared/loading.dart';

class AnimeDetailsScreen extends StatelessWidget {
  final String animeId;

  const AnimeDetailsScreen({
    super.key,
    required this.animeId,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AnimeApi.getAnimeDetails(
        animeId,
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
        } else {
          if (snapshot.hasData) {
            var data = snapshot.data!;

            return DescriptionScreen(
              animeDetails: data,
            );
          }
        }

        return Text("Something happened, idk what?");
      }),
    );
  }
}
