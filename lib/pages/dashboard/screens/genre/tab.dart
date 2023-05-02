import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'grid_wid.dart';

Widget tabBar(context) {
  return DefaultTabController(
    length: 8,
    child: Column(
      children: [
        const TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          labelPadding: EdgeInsets.only(right: 10),
          labelStyle: TextStyle(fontFamily: semibold, fontSize: 14),
          indicatorColor: red,
          indicatorSize: TabBarIndicatorSize.label,
          padding: EdgeInsets.only(left: 10),
          tabs: [
            Tab(
              text: genre1,
            ),
            Tab(
              text: genre2,
            ),
            Tab(
              text: genre3,
            ),
            Tab(
              text: genre4,
            ),
            Tab(
              text: genre5,
            ),
            Tab(
              text: genre6,
            ),
            Tab(
              text: genre7,
            ),
            Tab(
              text: genre8,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .78,
          child: TabBarView(
            children: [
              buildgrid(),
              buildgrid(),
              buildgrid(),
              buildgrid(),
              buildgrid(),
              buildgrid(),
              buildgrid(),
              buildgrid(),
            ],
          ),
        )
      ],
    ),
  );
}
