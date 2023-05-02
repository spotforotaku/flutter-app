import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';

Widget buildgrid() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        shrinkWrap: true,
        itemCount: 18,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 0,
          crossAxisSpacing: 13,
          mainAxisExtent: 195,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                imagelist[index],
                height: 150,
              ),
              Text(animename[index],
                  style: TextStyle(fontSize: 15, fontFamily: semibold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5, top: 1),
                    child: Image.asset(icheart),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      fav[index],
                      style: TextStyle(
                          fontSize: 12, fontFamily: regular, color: red),
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    ),
  );
}
