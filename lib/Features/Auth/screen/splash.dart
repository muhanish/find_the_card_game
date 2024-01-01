import 'dart:async';

import 'package:find_the_match/Utils/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.dashboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Image.asset(
          Images.splashImage,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
