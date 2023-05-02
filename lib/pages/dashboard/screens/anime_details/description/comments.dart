import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/constants/styles.dart';

Widget Comments(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 10,
      ),
      Text(
        '25 Comments',
        style: TextStyle(fontSize: 18, fontFamily: bold),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  child: Image.asset(
                    propic,
                  ),
                ),
                title: Text(
                  "Ketan",
                  style: TextStyle(fontSize: 13, fontFamily: semibold),
                ),
                subtitle: Text(
                  "I loved this anime, amazing graphics 😍😍.",
                  style: TextStyle(fontSize: 13, fontFamily: regular),
                ),
              );
            },
            separatorBuilder: (context, _) {
              return SizedBox(
                height: 5,
              );
            },
            itemCount: 4),
      )
    ],
  );
}
