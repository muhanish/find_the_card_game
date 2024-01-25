import 'package:find_the_match/Features/Auth/screen/login_screen.dart';
import 'package:find_the_match/Features/Auth/screen/splash.dart';
import 'package:find_the_match/Features/Dashboard/screen/dashboard.dart';
import 'package:find_the_match/Features/Games/Card%20Matching/screen/memory_card_create_game_screen.dart';
import 'package:find_the_match/Features/Games/Tic%20Tac%20Toe/screen/tic_tac_toe_create_game_screen.dart';
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

      case Routes.ticTacToeCreateGameScreen:
        return MaterialPageRoute(builder: (_) => const TicTacToeCreateGameScreen());
      case Routes.memoryCardCreateGameScreen:
        return MaterialPageRoute(builder: (_) => const MemoryCardCreateGameScreen());

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String ticTacToeCreateGameScreen = '/ticTacToeCreateGameScreen';
  static const String memoryCardCreateGameScreen = '/memoryCardCreateGameScreen';
}
