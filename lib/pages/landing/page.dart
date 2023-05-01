import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final IconData landingIcon;
  final String landingText;
  final String buttonText;
  final String labelButtonText;
  final String labelButtonDesc;
  final Function handleButton;
  final Function handleLabel;

  const Page(
      {super.key,
      required this.landingIcon,
      required this.landingText,
      required this.buttonText,
      required this.labelButtonText,
      required this.labelButtonDesc,
      required this.handleButton,
      required this.handleLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/getStarted.png"),
            fit: BoxFit.cover,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height * .36,
                  alignment: Alignment.topCenter,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(
                        landingIcon,
                        color: Colors.white,
                        size: 45.0,
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        landingText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 278,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfff05d5e),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(39.32), // <-- Radius
                        ),
                      ),
                      onPressed: () => handleButton(),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        labelButtonDesc,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () => handleLabel(),
                        child: Text(
                          labelButtonText,
                          style: const TextStyle(
                              color: Color(0xfff05d5e), fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
