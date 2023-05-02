import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  final List<String> genres;
  final List<String> names;

  const Genres({
    super.key,
    required this.genres,
    required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
      child: Stack(
        children: [
          SizedBox(
            height: 55,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: genres.length,
              separatorBuilder: (context, _) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Image.asset(
                      genres[index],
                      fit: BoxFit.fitHeight,
                    ),
                    Positioned(
                      left: 10,
                      bottom: 5,
                      child: Text(
                        names[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
