import 'package:flutter/material.dart';
import 'package:otaku/pages/dashboard/dashboard.dart';
import 'package:otaku/pages/landing/landing.dart';
import 'package:otaku/services/auth.dart';
import 'package:otaku/shared/error.dart';
import 'package:otaku/shared/loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService.userStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen();
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        }

        if (snapshot.hasData) {
          return DashboardPage();
        }

        return LandingPage();
      },
    );
  }
}
