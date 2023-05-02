import 'package:flutter/material.dart';

class AnimeGrid extends StatelessWidget {
  final String title;
  final List<String> images;

  const AnimeGrid({
    super.key,
    required this.title,
    required this.images,
  });

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
                        Image.asset(
                          images[index],
                          fit: BoxFit.fitHeight,
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