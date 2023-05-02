import 'package:flutter/material.dart';
import 'constants.dart';

class Tutorial1 extends StatelessWidget {
  const Tutorial1({super.key});

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
                  child: Image.asset(listTut),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Organize your anime",
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
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Know which episode your on. Create your favorite anime list.",
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
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Keep track of your anime",
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
