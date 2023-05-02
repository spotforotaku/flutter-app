import 'package:flutter/material.dart';
import 'package:otaku/constants.dart';
import 'package:otaku/providers/dashboard_provider.dart';
import 'package:otaku/services/auth.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(AuthService().user);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imgotaku,
                    height: 100,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      icsearch,
                      height: 22,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
