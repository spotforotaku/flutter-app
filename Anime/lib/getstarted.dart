import 'package:flutter/material.dart';

import 'lets_you_in.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/get_started 1.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          margin: const EdgeInsets.only(top: 560),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Text(
                  "Welcome to Otaku",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: 'assets/font/OpenSans-Bold.ttf'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Text(
                  "Find your ideal Anime",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 23,
                      color: Colors.white,
                      fontFamily: 'OpenSans'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Container(
                  height: 30,
                  // width: 10,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Image.asset('assets/images/Rectangle 1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Image.asset('assets/images/Ellipse 1.png'),
                        ),
                        Image.asset('assets/images/Ellipse 1.png'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 278,
                height: 45,
                child: ElevatedButton(
                  child: const Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39.32), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Let_in()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
