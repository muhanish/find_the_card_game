import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_the_match/Features/Auth/model/firebase_user_model.dart';
import 'package:find_the_match/Utils/constants.dart';

class FirebaseUserServices {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  // USERS COLLECTION REF
  static final usersCollectionRef = firestore.collection(FirebaseConstants.usersCollection);

  static createFirebaseUser(FirebaseUserModel user) async {
    await usersCollectionRef.doc(user.uid).set(user.toMap(), SetOptions(merge: true));
  }

  static updateFireabseUser(FirebaseUserModel updatedUser) async {
    await usersCollectionRef.doc(updatedUser.uid).set(updatedUser.toMap(), SetOptions(merge: true));
  }
}
