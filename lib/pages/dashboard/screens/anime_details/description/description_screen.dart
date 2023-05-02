import 'package:flutter/material.dart';
import 'package:otaku/models/anime_details.dart';
import 'des_top.dart';
import 'tabbar_desc.dart';

class DescriptionScreen extends StatelessWidget {
  final AnimeDetails animeDetails;

  const DescriptionScreen({
    Key? key,
    required this.animeDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            destop(
              animeImg: animeDetails.animeImg,
            ),
            tabdes(context),
          ],
        ),
      ),
    );
  }
}
