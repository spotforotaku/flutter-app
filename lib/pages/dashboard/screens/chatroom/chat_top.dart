import 'package:flutter/material.dart';
import 'package:otaku/constants.dart';

Widget chatTop() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 23),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            imgotaku,
            height: 58,
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 55,
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            fillColor: Color(0xdcdcdcdc),
            filled: true,
            hintText: 'Find Clubs...',
            prefixIcon: Icon(Icons.search, color: Colors.redAccent),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                  color: Color(0xdcdcdcdc),
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                  color: Colors.redAccent,
                )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'My Clubs',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
    ],
  );
}
