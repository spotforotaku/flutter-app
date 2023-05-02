// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';

Widget CreateTopBar({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
                fontFamily: bold,
                fontSize: 23,
                color: Colors.black,
                letterSpacing: 0.1)),
        // Icon(Icons.search, size: 35)
        Image.asset(
          icsearch,
          height: 20,
          width: 30,
        )
      ],
    ),
  );
}
