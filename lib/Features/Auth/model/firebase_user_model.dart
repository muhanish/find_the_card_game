import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseUserModel {
  String? uid;
  String? name;
  String? email;
  String? photoUrl;
  int? updatedAt;

  FirebaseUserModel({this.uid, this.name, this.email, this.photoUrl, this.updatedAt});

  // Creating a UserModel object from UserCredential
  factory FirebaseUserModel.fromUserCredential(UserCredential credential) {
    return FirebaseUserModel(
      uid: credential.user?.uid,
      name: credential.user?.displayName,
      email: credential.user?.email,
      photoUrl: credential.user?.photoURL,
      updatedAt: Timestamp.now().millisecondsSinceEpoch,
    );
  }

  // Converting UserModel object to a map
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'photoUrl': photoUrl,
      'updatedAt': updatedAt,
    };
  }

  // Creating a UserModel object from a map (Firestore)
  factory FirebaseUserModel.fromMap(Map<String, dynamic> map) {
    return FirebaseUserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      photoUrl: map['photoUrl'],
      updatedAt: map['updatedAt'],
    );
  }
}
