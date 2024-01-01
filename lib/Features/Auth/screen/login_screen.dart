import 'package:find_the_match/Utils/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.PRIMARY_DARK,
              AppColors.PRIMARY_SEC_DARK,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            const Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const Spacer(),
            CustomeButton(
              onPressed: () => onGoogleSignIn(),
              text: "Google",
              leadingImage: Images.googleIcon,
            ).animate(effects: AnimationEffects.transitionIn),
            40.hh,
          ],
        ),
      ),
    );
  }

  void onGoogleSignIn() {
    Navigator.pushNamed(context, Routes.dashboard);
  }
}
