import 'package:find_the_match/Features/Auth/model/firebase_user_model.dart';
import 'package:find_the_match/Services/firebase_auth_services.dart';
import 'package:find_the_match/Services/firebase_user_services.dart';
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

  Future<void> onGoogleSignIn() async {
    Navigator.pushNamed(context, Routes.dashboard);

    // await FirebaseServices.googleLogin(context: context).then((user) {
    //   debugPrint("GOOGLE USER: ${user?.user?.uid}, ${user?.user?.displayName}");
    //   if (user != null) {
    //     final FirebaseUserModel firebaseUser = FirebaseUserModel.fromUserCredential(user);
    //     FirebaseUserServices.createFirebaseUser(firebaseUser);
    //     Navigator.pushNamed(context, Routes.dashboard);
    //   }
    // });
  }
}
