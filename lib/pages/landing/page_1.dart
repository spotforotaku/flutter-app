import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otaku/pages/landing/page.dart' as landing_page;

class Page1 extends StatelessWidget {
  final Function handleButton;
  final Function handleLabel;

  const Page1({
    Key? key,
    required this.handleButton,
    required this.handleLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return landing_page.Page(
      landingIcon: FontAwesomeIcons.heart,
      landingText: "Welcome To Otaku!",
      buttonText: "Get Started",
      labelButtonText: "Sign In",
      labelButtonDesc: "Have an account already?",
      handleButton: handleButton,
      handleLabel: handleLabel,
    );
  }
}
