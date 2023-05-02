import 'package:flutter/material.dart';

class AnimeDetailsScreen extends StatelessWidget {
  final String animeTitle;

  const AnimeDetailsScreen({
    super.key,
    required this.animeTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Text(
          animeTitle,
        ),
      ),
    );
  }
}
