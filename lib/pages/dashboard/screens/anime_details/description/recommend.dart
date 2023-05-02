import 'package:flutter/material.dart';
import 'package:otaku/constants/colors.dart';
import 'package:otaku/constants/strings.dart';
import 'package:otaku/constants/styles.dart';
import 'package:otaku/constants/lists.dart';

Widget recommend({String? title, required List<String> images}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(
              fontFamily: bold,
              fontSize: 17,
            ),
          ),
          Container(
            child: const Text(
              seeall,
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
                              color: red,
                            )))
                  ],
                );
              },
            ),
          ],
        ),
      ),
    ],
  );
}
