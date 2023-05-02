import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'comments.dart';
import 'recommend.dart';

Widget desbot(context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki,a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village.',
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 22,
                      )),
                  Text(
                    "Rate",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.ondemand_video_outlined,
                        size: 22,
                      )),
                  Text(
                    "Watching",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.pause_circle_outline_outlined,
                        size: 22,
                      )),
                  Text(
                    "On-Hold",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_circle_outline_outlined,
                        size: 22,
                      )),
                  Text(
                    "Completed",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Genres : ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 3, bottom: 3, left: 7, right: 7),
                    child: Text("Action",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: regular,
                            color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 3, bottom: 3, left: 7, right: 7),
                    child: Text("Adventure",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: regular,
                            color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 3, bottom: 3, left: 7, right: 7),
                    child: Text("Science",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: regular,
                            color: Colors.black)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Comments(context),
        ],
      ),
    ),
  );
}
