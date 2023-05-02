import 'package:flutter/material.dart';

Widget chatClub() {
  return Column(
    children: [
      Text(
        'No Clubs Found.Join One!',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
      ),
      SizedBox(
        height: 12,
      ),
      Row(
        children: const [
          Icon(
            Icons.help_outline_outlined,
            color: Colors.redAccent,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Some of my clubs are missing',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      )
    ],
  );
}
