import 'package:flutter/material.dart';
import 'package:otaku/pages/login/login.dart';
import 'package:otaku/pages/tutorial/tutorial_template.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'constants.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(
                () {
                  onLastPage = (index == 2);
                },
              );
            },
            controller: _controller,
            children: const [
              TutorialTemplate(
                imageTut: listTut,
                heading: "Organize your anime",
                text1:
                    "Know which episode your on. Create your favorite anime list.",
                text2: "Keep track of your anime",
              ),
              TutorialTemplate(
                imageTut: browseTut,
                heading: "Discover new anime",
                text1: "See all different genres and choose your anime.",
                text2: "Anime are waiting for you",
              ),
              TutorialTemplate(
                imageTut: chatTut,
                heading: "Discuss anime",
                text1:
                    "Talk about the latest episode. Join clubs with shared interests.",
                text2: "Chat with other Anime Freaks",
              ),
            ],
          ),
          //  dot indicator
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ColorTransitionEffect(
                    dotColor: Color(0xffF05D5E),
                    activeDotColor: Colors.white,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 10,
                  ),
                ),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
