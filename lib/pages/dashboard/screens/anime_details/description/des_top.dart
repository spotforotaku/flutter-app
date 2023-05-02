import 'package:flutter/material.dart';
import 'package:otaku/constants/images.dart';

Widget destop(){
  return Stack(
    children: [
    Image.asset(banner),
      Positioned(
        right: 50,
          bottom: 12,
          child: IconButton(onPressed: (){}, icon: Icon(Icons.add_box, size: 30, color: Colors.redAccent,))),
      Positioned(
          right: 10,
          bottom: 12,
          child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_rounded,size: 30, color: Colors.redAccent,))),
    ],
  );
}