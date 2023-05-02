import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otaku/pages/landing/page.dart' as landing_page;
import 'package:otaku/routes.dart';

class Page2 extends StatefulWidget {
  final Function handleButton;
  final Function handleLabel;

  const Page2(
      {super.key, required this.handleButton, required this.handleLabel});

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
    return landing_page.Page(
      landingIcon: _icons[_index],
      landingText: _texts[_index],
      buttonText: "Start Tutorial",
      labelButtonText: "Skip",
      labelButtonDesc: "Have already used our app before?",
      handleButton: widget.handleButton,
      handleLabel: widget.handleLabel,
    );
  }
}
