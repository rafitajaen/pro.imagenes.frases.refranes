import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:developer' as developer;

@immutable
class User {
  const User({@required this.uid, @required this.name, @required this.email, @required this.photourl});
  final String uid;
  final String name;
  final String email;
  final String photourl;
}

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn(/*scopes: ['email']*/);

  User _userFromFirebase(FirebaseUser user) {
    return (user == null) ? null : User(uid: user.uid, name: user.displayName, email: user.email, photourl: user.photoUrl );
  }

  Stream<User> get onAuthStateChanged {
    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
  }

  Future<User> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

   Future<User> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn().catchError((onError) {
        
        developer.log('Sign In Cancelled', name: 'pro.arae.FirebaseAuthService.signInWithGoogle');

      });

      //final GoogleSignInAccount googleSignInAccount = await _getSIA();

      if (googleSignInAccount == null) return null;

      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final AuthResult authResult =
          await _firebaseAuth.signInWithCredential(credential).catchError((onError) {
            print('Sign In Cancelled: $onError');
            developer.log('Sign In Cancelled: $onError', name: 'pro.arae.FirebaseAuthService.signInWithCredential');
          });

      if (authResult.user == null) return null;

      return getCurrentUser();
    } catch (e) {
      developer.log('Exception Catched while Google Login: $e', name: 'pro.arae.FirebaseAuthService.getCurrentUser');
      
      return null;
    }
  }

  Future<User> getCurrentUser() async {
    return _userFromFirebase(await _firebaseAuth.currentUser());
  }

  Future<FirebaseUser> getCurrentFirebaseUser() async {
    return await _firebaseAuth.currentUser();
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
