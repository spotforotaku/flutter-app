import 'package:flutter/material.dart';

Widget chatCard() {
  return Column(
    children: [
      Row(
        children: const [
          Text('Popular',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          SizedBox(
            width: 255,
          ),
          Text('See all',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  color: Colors.redAccent)),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          'See the most popular clubs on Otaku',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
      ),
    ],
  );
}
