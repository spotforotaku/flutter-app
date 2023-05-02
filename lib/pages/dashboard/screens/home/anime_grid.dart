import 'package:flutter/material.dart';
import 'package:otaku/models/popular_anime.dart';
import 'package:otaku/models/recently_released.dart';

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

            List<String> images = List<String>.from(
              data.map(
                (e) => e.animeImg,
              ),
            );

            return AnimeGridHelper(
              title: title,
              images: images,
            );
          } else {
            return AnimeGridHelper(
              title: title,
              images: defaultList,
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
    required this.images,
  });

  final String title;
  final List<String> images;

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
                  itemCount: images.length,
                  separatorBuilder: (context, _) => SizedBox(width: 9),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Image(
                          image: NetworkImage(
                            images[index],
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
