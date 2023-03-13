import 'package:anime/create_account.dart';
import 'package:flutter/material.dart';

class Let_in extends StatelessWidget {
  const Let_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, right: 25.0),
          child: SizedBox(
              height: 180,
              width: 310,
              child: Image.asset('assets/images/OTAKU 2.png')),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 1.0),
          child: Text(
            "Let's You In",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.black,
                fontFamily: 'assets/font/OpenSans-Bold.ttf'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SizedBox(
            width: 278,
            height: 50,
            child: ElevatedButton(
              child: Row(
                children: [
                  Image.asset('assets/images/facebook 2.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
              ),
              onPressed: () {
                print("Continue with Facebook");
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            width: 278,
            height: 50,
            child: ElevatedButton(
              child: Row(
                children: [
                  Image.asset('assets/images/google 1.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
              ),
              onPressed: () {
                print("Continue with Google");
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            width: 278,
            height: 50,
            child: ElevatedButton(
              child: Row(
                children: [
                  Image.asset('assets/images/apple-logo 3.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Continue with Apple',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
              ),
              onPressed: () {
                print("Continue with Apple");
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                height: 0.5,
                child: Container(
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                child: Text(
                  'or',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                height: 0.5,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: SizedBox(
            width: 250,
            height: 49,
            child: ElevatedButton(
              child: const Text(
                'Sign in with Email',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(39.32), // <-- Radius
                ),
              ),
              onPressed: () {
                print("Sign in with Email");
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have an account?',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    fontFamily: 'OpenSans',
                    color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const account()));
                },
                child: const Text(
                  ' Sign Up',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      fontFamily: 'OpenSans'),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
