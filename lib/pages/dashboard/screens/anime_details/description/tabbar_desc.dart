import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'desbot.dart';
import 'episodelist.dart';

Widget tabdes(context) {
  return DefaultTabController(
    length: 2,
    child: Column(
      children: [
        TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            labelPadding: EdgeInsets.zero,
            labelStyle: TextStyle(fontFamily: semibold, fontSize: 14),
            indicatorColor: red,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(
                text: "Description",
              ),
              Tab(
                text: "Episodes",
              ),
            ]),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.55,
          child: TabBarView(
            children: [
              desbot(context),
              EpisodeDesc(context),
            ],
          ),
        )
      ],
    ),
  );
}
