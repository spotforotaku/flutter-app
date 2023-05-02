import 'package:flutter/material.dart';
import 'package:otaku/models/popular_anime.dart';
import 'package:otaku/models/recently_released.dart';
import 'package:otaku/pages/dashboard/screens/anime_details.dart';

class AnimeGrid<T> extends StatelessWidget {
  final String title;
  final Future<List<T>> futureValue;
  final List<String> defaultList;

  const AnimeGrid({
    super.key,
    required this.title,
    required this.futureValue,
    required this.defaultList,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: futureValue,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("has error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        } else {
          if (snapshot.hasData) {
            var data = snapshot.data!;

            return AnimeGridHelper(
              title: title,
              animes: data,
            );
          } else {
            return Text(
              "Something went wrong. We're sorry about that 😥",
            );
          }
        }
      },
    );
  }
}

class AnimeGridHelper extends StatelessWidget {
  const AnimeGridHelper({
    super.key,
    required this.title,
    required this.animes,
  });

  final String title;
  final List<dynamic> animes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const Text(
                "Sea All",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 170,
            child: Stack(
              children: [
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: animes.length,
                  separatorBuilder: (context, _) => SizedBox(width: 9),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("Tapped index $index");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => AnimeDetailsScreen(
                              animeTitle: animes[index].animeId,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: NetworkImage(
                              animes[index].animeImg,
                            ),
                            height: 300,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            right: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_box,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
