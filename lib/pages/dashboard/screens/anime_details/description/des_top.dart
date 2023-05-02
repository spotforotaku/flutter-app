import 'package:flutter/material.dart';
import 'package:otaku/constants/images.dart';

class destop extends StatelessWidget {
  final String animeImg;
  const destop({
    super.key,
    required this.animeImg,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                animeImg,
              ),
            ),
          ),
          // child: Image.network(
          //   animeImg,
          //   fit: BoxFit.fill,
          // ),
        ),
        Positioned(
          right: 50,
          bottom: 12,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box,
              size: 30,
              color: Colors.redAccent,
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 12,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline_rounded,
              size: 30,
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }
}

// Widget destop({String animeImg = banner}) {}
