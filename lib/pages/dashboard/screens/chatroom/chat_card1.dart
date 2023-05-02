import 'package:flutter/material.dart';

Widget chatCard1() {
  return Column(
    children: [
      Row(
        children: const [
          Text('New',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          SizedBox(
            width: 280,
          ),
          Text(
            'See all',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          'See the most recent clubs',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
      ),
    ],
  );
}
