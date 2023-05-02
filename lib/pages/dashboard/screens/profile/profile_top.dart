import 'package:flutter/material.dart';

import 'constants.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 155,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(profilebg),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            top: 80,
            child: Container(
              height: 180,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: Color(0xffF6EDED),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        child: Image.asset(propic),
                      ),
                      Positioned(
                        left: 70,
                        top: 70,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mode_edit_outlined,
                                  color: Colors.black,
                                  size: 17,
                                ))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Text(
                    "'Anime Freak'",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 260,
            child: Container(
              height: 50,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
                gradient: rGradient,
              ),
              child: const Center(
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
