import 'package:flutter/material.dart';
import 'package:otaku/providers/dashboard_provider.dart';
import 'package:otaku/services/auth.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(AuthService().user);

    return Center(
      child: Text("HomeScreen"),
    );
  }
}
