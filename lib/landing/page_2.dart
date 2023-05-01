import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _index = 0;

  final List<String> _texts = [
    "Make your recommendations better",
    "Track your shows and movies",
    "Remember where you left off",
    "Discover your new favourite show"
  ];

  final List<IconData> _icons = [
    // CupertinoIcons.hand_thumbsup_fill,
    FontAwesomeIcons.thumbsUp,
    CupertinoIcons.checkmark_circle,
    CupertinoIcons.calendar,
    CupertinoIcons.heart
  ];

  @override
  void initState() {
    super.initState();
    _updateTextAndIcon();
  }

  void _updateTextAndIcon() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _index = 1;
      });
    }
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _index = 2;
      });
    }
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _index = 3;
      });
    }
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _index = 0;
      });
    }
    _updateTextAndIcon();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/getStarted.png"),
          fit: BoxFit.cover,
        ),
      ),
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
                        _icons[_index],
                        color: Colors.white,
                        size: 45.0,
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        _texts[_index],
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
                        'Start Tutorial',
                        style: TextStyle(
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
                      const Text(
                        "Have already used our app before?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to sign up screen
                        },
                        child: const Text(
                          "Skip",
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
