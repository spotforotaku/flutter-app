import 'package:flutter/material.dart';
import 'package:otaku/models/top_airing.dart';
import 'package:otaku/pages/dashboard/screens/anime_details.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimeSlider extends StatelessWidget {
  final List<TopAiring> animes;
  const AnimeSlider({
    super.key,
    required this.animes,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return VxSwiper.builder(
          viewportFraction: 0.55,
          autoPlay: true,
          height: 300,
          enlargeCenterPage: true,
          itemCount: animes.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                print("tappen on index $index");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AnimeDetailsScreen(
                      animeTitle: animes[index].animeId,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    21,
                  ),
                ),
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
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
