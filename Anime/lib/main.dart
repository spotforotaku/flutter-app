import 'dart:async';

import 'package:flutter/material.dart';

import 'getstarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'OTAKU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fun(context);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: screenHeight * 0.52,
            width: screenWidth * 0.85,
            margin: const EdgeInsets.only(top: 90),
            child: Image.asset('assets/images/OTAKU 2.png'),
            
          ),
        ),
        Center(
          child: Container(
              height: screenHeight * 0.36,
              width: screenWidth * 0.75,
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child:
                      Center(child: Image.asset('assets/images/loading 1.png')),
                ),
              )),
        ),
      ],
    )
        //   body: Container(
        //     height: double.infinity,
        //     width: double.infinity,
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(top: 100.0,right: 10.0),
        //           child: SizedBox(
        //               height: 200,
        //               width: 310,
        //               child: Image.asset('assets/images/OTAKU 2.png')),
        //         ),
        //         SizedBox(
        //             child: Image.asset('assets/images/loading 1.png'))
        //       ],
        //     )
        //   )
        );
  }
}

void fun(BuildContext context) {
  Timer(const Duration(seconds: 3), () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => GetStarted()));
  });
}
