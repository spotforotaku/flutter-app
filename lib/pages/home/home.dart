import 'package:flutter/material.dart';
import 'package:otaku/pages/dashboard/dashboard.dart';
import 'package:otaku/pages/landing/landing.dart';
import 'package:otaku/services/auth.dart';
import 'package:otaku/shared/error.dart';
import 'package:otaku/shared/loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void popAll(BuildContext context) {
    Future.delayed(
      Duration.zero,
      () {
        while (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        print(snapshot.connectionState);
        if (snapshot.hasError) {
          return ErrorScreen();
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          popAll(context);
          return const Loading();
        } else {
          if (snapshot.hasData) {
            print(snapshot.data);
            popAll(context);
            return const DashboardPage();
          } else {
            return const LandingPage();
          }
        }
      },
    );
  }
}
