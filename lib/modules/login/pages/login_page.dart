import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/services/firebase_auth_service.dart';
import '../../../generated/l10n.dart';
import '../widgets/anonymous_sign_in_button.dart';
import '../widgets/logo_app.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/loginPageBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                LogoApp(),
                SizedBox(height: 16.0),
                SubLogoApp(),
                Expanded(child: Container()),
                AnonymousSignInButton(
                  label: S.of(context).loginPageSignInWithGoogle,
                  onPressed: () async {
                    await _signInWithGoogle(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  

/*   Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<FirebaseAuthService>(context, listen: false);
      final user = await auth.signInAnonymously();
      print('uid: ${user.uid}');
    } catch (e) {
      print(
          '*** Catched Exception in LoginPage -> _signInAnonymously : $e ***');
    }
  } */

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final auth = Provider.of<FirebaseAuthService>(context, listen: false);
      final user = await auth.signInWithGoogle();
      print('uid: ${user.uid}');
      print('name: ${user.name}');
      print('email: ${user.email}');
      print('photourl: ${user.photourl}');
    } catch (e) {
      print('*** Catched Exception in LoginPage -> _signInWithGoogle : $e ***');
    }
  }
}
