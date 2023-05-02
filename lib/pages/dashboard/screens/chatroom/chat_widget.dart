// import 'package:chat/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:otaku/pages/dashboard/screens/chatroom/chat_room.dart';

Widget chatWidget(context, String imgSrc, String title, String description,
    String membersCount) {
  return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 210,
      width: 160,
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0, top: 3.0),
        child: Column(
          children: [
            Image.asset(imgSrc),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  description,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people),
                  Text(membersCount),
                  SizedBox(
                    width: 45,
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    iconSize: 40,
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GroupChatRoom(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ));
}
