import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/services/auth.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Let's welcome you in",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(),
          LoginButton(
            buttonText: "Continue with Google",
            iconData: FontAwesomeIcons.google,
            onClick: AuthService().loginGoogle,
            bgColor: Colors.pink,
          ),
          LoginButton(
            buttonText: "Continue as a guest",
            iconData: FontAwesomeIcons.user,
            onClick: AuthService().loginAnon,
            bgColor: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String buttonText;
  final IconData iconData;
  final Color bgColor;
  final Function onClick;

  const LoginButton(
      {super.key,
      required this.buttonText,
      required this.iconData,
      required this.onClick,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: ElevatedButton(
        onPressed: () => onClick(),
        style: ElevatedButton.styleFrom(backgroundColor: bgColor),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconData,
              ),
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
