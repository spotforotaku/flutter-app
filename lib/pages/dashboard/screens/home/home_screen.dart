import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/pages/dashboard/screens/home/anime_grid.dart';
import 'package:otaku/pages/dashboard/screens/home/genres.dart';
import 'package:otaku/pages/dashboard/screens/home/slider.dart';
import 'package:otaku/services/anime_api.dart';
import 'package:otaku/services/auth.dart';
import 'package:otaku/shared/helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(AuthService().user);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 40,
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imgotaku,
                    height: 100,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      icsearch,
                      height: 22,
                    ),
                  ),
                ],
              ),
            ),
            getSizedBox(
              height: 20,
            ),
            FutureBuilder(
              future: AnimeApi.getTopAiring(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Error");
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading");
                } else {
                  if (snapshot.hasData) {
                    var data = snapshot.data!;

                    return AnimeSlider(
                      animes: data,
                    );
                  } else {
                    return Text(
                      "Something went wrong. We're sorry about that 😥",
                    );
                  }
                }
              },
            ),
            getSizedBox(
              height: 10,
            ),
            AnimeGrid(
              futureValue: AnimeApi.getRecentlyReleased(),
              title: "Recently Released Episodes",
              defaultList: animeList,
            ),
            getSizedBox(
              height: 10,
            ),
            AnimeGrid(
              futureValue: AnimeApi.getPopular(),
              title: "Now Trending",
              defaultList: trendingList,
            ),
            getSizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, top: 10, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Genres",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Genres(
              genres: genresList1,
              names: genresName1,
            ),
            Genres(
              genres: genresList2,
              names: genresName2,
            ),
            Genres(
              genres: genresList3,
              names: genresName3,
            ),
          ],
        ),
      ),
    );
  }
}
