import 'package:flutter/material.dart';
import 'package:otaku/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          "Login",
        ),
      ),
    );
  }
}
