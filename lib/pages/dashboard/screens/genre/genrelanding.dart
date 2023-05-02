import 'package:flutter/material.dart';
import 'tab.dart';
import 'topbar.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CreateTopBar(
            title: "Genre",
          ),
          tabBar(
            context,
          ),
        ],
      ),
    );
  }
}
