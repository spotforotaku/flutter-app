import 'package:otaku/pages/pages.dart';

class AppRoutes {
  static const homeRoute = "/";
  static const loginRoute = "/login";
  static const signupRoute = "/signup";
  static const profileRoute = "/profile";
  static const landingRoute = "/landing";
  static const dashboardRoute = "/dashboard";
  static const settingsRoute = "/settings";
  static const statsRoute = "/stats";
  static const tutorialRoute = "/tutorial";

  static var routes = {
    AppRoutes.homeRoute: (_) => HomePage(),
    AppRoutes.loginRoute: (_) => LoginPage(),
    AppRoutes.signupRoute: (_) => SignupPage(),
    AppRoutes.profileRoute: (_) => ProfilePage(),
    AppRoutes.landingRoute: (_) => LandingPage(),
    AppRoutes.dashboardRoute: (_) => DashboardPage(),
    AppRoutes.settingsRoute: (_) => SettingsPage(),
    AppRoutes.statsRoute: (_) => StatsPage(),
    AppRoutes.tutorialRoute: (_) => TutorialPage(),
  };
}
