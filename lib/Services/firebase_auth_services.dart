import 'package:find_the_match/Utils/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseServices {
  /// Google login start function
  static Future<UserCredential?> googleLogin({required BuildContext context}) {
    // LoadingScreen.instance().show(context: context);
    print(" start calling google login ");
    // isLoading = true;

    return signInWithGoogle().then((googleAuth) async {
      // if user dismissed the OAuth dialog
      if (googleAuth == null) {
        // LoadingScreen.instance().hide();
        // loaderController.updateGoogleLoginLoader(false);
        return null;
      }

      /// Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // isLoading = true;
      UserCredential user = await FirebaseAuth.instance.signInWithCredential(credential);
      // isLoading = false;
      return user;
    });
  }

  /// Start sign with google
  static Future<GoogleSignInAuthentication?> signInWithGoogle() async {
    return _signOut().then((value) async {
      try {
        // Trigger the authentication flow
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        // Obtain the auth details from the request
        final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

        // Once signed in, return the UserCredential
        return googleAuth;
      } catch (error) {
        print("Error while google signnin... $error");
        return null;
      }
    });
  }

  static Future _signOut() async {
    GoogleSignIn google = GoogleSignIn();
    return google.isSignedIn().then((value) async {
      print("already google login >>>>>>> $value");
      if (value) {
        await google.signOut();
        await FirebaseAuth.instance.signOut();
      }
    });
  }
}
