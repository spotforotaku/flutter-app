import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/models/anime_details.dart';
import 'comments.dart';
import 'recommend.dart';

class DescBot extends StatelessWidget {
  final AnimeDetails animeDetails;

  const DescBot({super.key, required this.animeDetails});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                animeDetails.animeTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                animeDetails.synopsis,
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
                  ] +
                  List.from(
                    animeDetails.genres.map(
                      (e) => AnimeDescGenre(genreName: e),
                    ),
                  ),
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
}

class AnimeDescGenre extends StatelessWidget {
  final String genreName;

  const AnimeDescGenre({
    super.key,
    required this.genreName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Colors.grey.withOpacity(0.3),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 7, right: 7),
              child: Text(
                genreName,
                style: TextStyle(
                    fontSize: 12, fontFamily: regular, color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
