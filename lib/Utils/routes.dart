import 'package:find_the_match/Features/Auth/screen/login_screen.dart';
import 'package:find_the_match/Features/Auth/screen/splash.dart';
import 'package:find_the_match/Features/Dashboard/screen/dashboard.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
}
