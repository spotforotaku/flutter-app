import 'package:flutter/material.dart';

import '../genre/grid_wid.dart';
import '../genre/topbar.dart';

class NowTrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [CreateTopBar(title: "Trending"), buildgrid()],
      ),
    );
  }
}
