import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimeSlider extends StatelessWidget {
  final List<String> animes;
  const AnimeSlider({
    super.key,
    required this.animes,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return VxSwiper.builder(
          viewportFraction: 0.8,
          autoPlay: true,
          height: 300,
          enlargeCenterPage: true,
          itemCount: animes.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  21,
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    animes[index],
                    fit: BoxFit.fitWidth,
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
            );
          },
        );
      },
    );
  }
}
