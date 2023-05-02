import 'package:flutter/material.dart';
import 'tab.dart';
import 'topbar.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({super.key});

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
      extendBodyBehindAppBar: false,
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
