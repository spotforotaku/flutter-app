import 'package:flutter/material.dart';

import '../genre/grid_wid.dart';
import '../genre/topbar.dart';

class NowTrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [CreateTopBar(title: "Trending"), buildgrid()],
      ),
    );
  }
}
