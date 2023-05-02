import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/pages/dashboard/screens/profile/profile_top.dart';
import 'package:otaku/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileTop(),
          Column(
            children: const [
              Button(option: wsettings, optionIcon: icset),
              Button(option: wstats, optionIcon: icstats),
              Button(option: list_name, optionIcon: iclist),
              Button(option: wfeed, optionIcon: icfeed),
              Button(option: win, optionIcon: icinvite),
              Button(option: whelp, optionIcon: ichelp),
              Button(option: wfaqs, optionIcon: icfaq),
              Button(option: wterms, optionIcon: icterm),
              Button(option: wabout, optionIcon: icabout),
              SizedBox(
                height: 10,
              ),
              SignOut(),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String option;
  final String optionIcon;

  const Button({super.key, required this.option, required this.optionIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          height: 55,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF6EDED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 3,
            ),
            child: ListTile(
              leading: Image.asset(
                optionIcon,
                height: 20,
              ),
              title: Transform(
                transform: Matrix4.translationValues(-16, 0.0, 0.0),
                child: Text(
                  option,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF05D5E),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 2,
        ),
        onPressed: () async {
          await AuthService().signOut();
        },
        child: Text(
          wsign,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
