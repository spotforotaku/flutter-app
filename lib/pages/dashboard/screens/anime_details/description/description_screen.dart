import 'package:flutter/material.dart';
import 'des_top.dart';
import 'tabbar_desc.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

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
            destop(),
            tabdes(context),
          ],
        ),
      ),
    );
  }
}
