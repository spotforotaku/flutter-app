import 'package:flutter/material.dart';
import 'package:otaku/pages/dashboard/screens/anime_details/anime_details_screen.dart';

class AnimeGrid<T> extends StatelessWidget {
  final String title;
  final Future<List<T>> futureValue;
  final List<String> defaultList;
  final Function onSeeAll;

  const AnimeGrid({
    super.key,
    required this.title,
    required this.futureValue,
    required this.defaultList,
    required this.onSeeAll,
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
              onSeeAll: onSeeAll,
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
    required this.onSeeAll,
  });

  final String title;
  final List<dynamic> animes;
  final Function onSeeAll;

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
              InkWell(
                onTap: () => onSeeAll(),
                child: const Text(
                  "Sea All",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14,
                  ),
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
                    return AnimeCard(anime: animes[index]);
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

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    super.key,
    required this.anime,
  });

  final dynamic anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => AnimeDetailsScreen(
              animeId: anime.animeId,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Image(
            image: NetworkImage(
              anime.animeImg,
            ),
            height: 300,
            fit: BoxFit.contain,
          ),
          // Positioned(
          //   right: 0,
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.add_box,
          //       color: Colors.red,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
