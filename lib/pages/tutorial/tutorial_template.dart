import 'package:flutter/material.dart';
import 'constants.dart';

class TutorialTemplate extends StatelessWidget {
  final String imageTut;
  final String heading;
  final String text1;
  final String text2;

  const TutorialTemplate(
      {super.key,
      required this.imageTut,
      required this.heading,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(height: 400, child: Image.asset(animeGuy))),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: MediaQuery.of(context).size.height * .45,
                  alignment: Alignment.topCenter,
                  child: Image.asset(imageTut),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height * .70,
                    child: Text(
                      textAlign: TextAlign.center,
                      text1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height * .70,
                    child: Text(
                      textAlign: TextAlign.center,
                      text2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
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
