import 'package:flutter/material.dart';
import 'package:otaku/pages/dashboard/screens/recommend/search_bar.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TopBarBrowse(context),
      ],
    );
  }
}
