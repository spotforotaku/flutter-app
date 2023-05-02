import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otaku/pages/dashboard/screens/screens.dart';

class DashboardProvider with ChangeNotifier {
  int _pageIndex = 0;

  final _navItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 26,
        ),
        label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.list_alt,
          size: 26,
        ),
        label: "My List"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.grid_view_rounded,
          size: 26,
        ),
        label: "Recommend"),
    const BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.comments,
          size: 26,
        ),
        label: "Discussion"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          size: 26,
        ),
        label: "Profile"),
  ];

  final _pages = [
    HomeScreen(),
    ListScreen(),
    RecommendScreen(),
    DiscussionScreen(),
    ProfileScreen(),
  ];

  final _showAppBar = [
    false,
    true,
    false,
    true,
    false,
  ];

  get pageLength => _pages.length;
  get currentPage => _pages[_pageIndex];
  get navItems => _navItems;
  bool get showAppBar => _showAppBar[_pageIndex];
  int get pageIndex => _pageIndex;
  set pageIndex(int idx) {
    _pageIndex = idx;
    notifyListeners();
  }
}
