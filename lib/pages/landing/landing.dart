import 'package:flutter/material.dart';
import 'package:otaku/pages/landing/page_1.dart';
import 'package:otaku/pages/landing/page_2.dart';
import 'package:otaku/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

export 'page.dart';
export 'page_1.dart';
export 'page_2.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _controller = PageController();

  void handleLabel() {
    Navigator.of(context).pushNamed(AppRoutes.loginRoute);
  }

  void handleButton() {
    Navigator.of(context).pushNamed(AppRoutes.tutorialRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(
                handleButton: handleButton,
                handleLabel: handleLabel,
              ),
              Page2(
                handleButton: handleButton,
                handleLabel: handleLabel,
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.55),
            // color: Color(0xfff05d5e),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const WormEffect(
                activeDotColor: Color(0xfff05d5e),
                // dotColor: Color(0xfff05d5e),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
