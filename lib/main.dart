import 'package:find_the_match/Features/Auth/screen/splash.dart';
import 'package:find_the_match/Utils/exports.dart';
import 'package:find_the_match/Utils/routes.dart';
import 'package:find_the_match/Utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match the Card',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
