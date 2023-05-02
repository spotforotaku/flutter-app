import 'package:flutter/material.dart';
import 'package:otaku/constants.dart';

import 'chat_card.dart';
import 'chat_card1.dart';
import 'chat_clubs.dart';
import 'chat_top.dart';
import 'chat_widget.dart';
import 'chat_widget1.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 21, right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            chatTop(),
            SizedBox(
              height: 20,
            ),
            chatClub(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    chatCard(),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          chatWidget(context, imgbleach, 'Bleach',
                              'Join our club Onii-Chan', '12.5k'),
                          SizedBox(
                            width: 20,
                          ),
                          chatWidget(context, imgds, 'Demon Slayer',
                              'Join our club Onii-Chan', '9.5k'),
                          SizedBox(
                            width: 20,
                          ),
                          chatWidget(context, imgbleach, 'Bleach is love',
                              'Join our club Onii-Chan', '19.5k'),
                          // SizedBox(
                          //   width: 20,
                          // ),
                          // chatWidget(context),
                          // SizedBox(
                          //   width: 20,
                          // ),
                          // chatWidget(context),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    chatCard1(),
                    SizedBox(
                      height: 3,
                    ),
                    chatWidget1(context, imgbleach, 'Bleach is love hinata',
                        'Join our club Onii-Chan,Yoo', '2.5k'),
                    SizedBox(
                      height: 20,
                    ),
                    chatWidget1(context, imgds, 'Demon Slayer',
                        'Join our club Onii-Chan', '1.5k'),
                    SizedBox(
                      height: 20,
                    ),
                    chatWidget1(context, imgbleach, 'Bleach is love',
                        'Join our club Onii-Chan', '3.5k'),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
