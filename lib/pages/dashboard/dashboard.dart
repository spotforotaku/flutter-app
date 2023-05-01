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
            await AuthService.signOut();
          },
          child: Text(
            "Sign Out",
          ),
        ),
      ),
    );
  }
}
