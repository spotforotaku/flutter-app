import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otaku/pages/landing/page.dart' as landing_page;
import 'package:otaku/routes.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return landing_page.Page(
      landingIcon: FontAwesomeIcons.heart,
      landingText: "Welcome To Otaku!",
      buttonText: "Get Started",
      labelButtonText: "Sign In",
      labelButtonDesc: "Have an account already?",
      handleButton: () {},
      handleLabel: () {
        Navigator.of(context).pushNamed(AppRoutes.loginRoute);
      },
    );
  }
}
