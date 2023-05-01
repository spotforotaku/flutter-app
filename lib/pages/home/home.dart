import 'package:flutter/material.dart';
import 'package:otaku/pages/dashboard/dashboard.dart';
import 'package:otaku/pages/landing/landing.dart';
import 'package:otaku/routes.dart';
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
        print(snapshot.connectionState);
        if (snapshot.hasError) {
          return ErrorScreen();
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          Future.delayed(
            Duration.zero,
            () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
          );
          return const Loading();
        } else {
          if (snapshot.hasData) {
            Future.delayed(
              Duration.zero,
              () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            );
            return const DashboardPage();
          } else {
            return const LandingPage();
          }
        }
      },
    );
  }
}
