import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 500,
              width: 500,
            ),
            const SizedBox(height: 20.0),
            const SpinKitCircle(
              color: Colors.redAccent,
              size: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
