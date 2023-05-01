import 'package:flutter/material.dart';
import 'package:otaku/routes.dart';
import 'package:otaku/services/auth.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var navigator = Navigator.of(context);
            await AuthService.signOut();
            navigator.pushNamedAndRemoveUntil(
                AppRoutes.landingRoute, (route) => false);
          },
          child: Text(
            "Sign Out",
          ),
        ),
      ),
    );
  }
}
