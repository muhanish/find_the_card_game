import 'package:find_the_match/Features/Auth/screen/splash.dart';
import 'package:find_the_match/Utils/exports.dart';
import 'package:find_the_match/Utils/routes.dart';
import 'package:find_the_match/Utils/theme.dart';
import 'package:find_the_match/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
      navigatorKey: GlobalVariable.navState,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();

  static showSnackBar({String msg = ""}) {
    SnackBar snackBar = SnackBar(
      content: Text(msg),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(GlobalVariable.navState.currentState!.context).showSnackBar(snackBar);
  }
}
