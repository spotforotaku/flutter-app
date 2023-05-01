import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
                  margin: const EdgeInsets.only(top: 200),
                  height: MediaQuery.of(context).size.height * .45,
                  alignment: Alignment.topCenter,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Welcome to Otaku",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height * .50,
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Find your Ideal Anime",
                      style: TextStyle(
                        color: Colors.white, fontSize: 17,
                        // fontFamily: regular
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 278,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff05d5e),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(39.32), // <-- Radius
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (_) => Let_in()));
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to sign up screen
                        },
                        child: const Text(
                          "Sign in",
                          style:
                              TextStyle(color: Color(0xfff05d5e), fontSize: 15),
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
