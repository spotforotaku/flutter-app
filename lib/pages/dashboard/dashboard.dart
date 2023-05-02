import 'package:flutter/material.dart';
import 'package:otaku/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DashboardProvider(),
      builder: (context, child) {
        var dashboardProvider = context.watch<DashboardProvider>();

        return Scaffold(
          appBar: dashboardProvider.showAppBar ? AppBar() : null,
          body: dashboardProvider.currentPage,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardProvider.pageIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.pink,
            backgroundColor: Color(0xFFF1F1F1),
            unselectedItemColor: Colors.black,
            items: dashboardProvider.navItems,
            onTap: (int idx) {
              dashboardProvider.pageIndex = idx;
            },
          ),
        );
      },
    );
  }
}
