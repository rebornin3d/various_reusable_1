import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

//In order to use this code the following steps must be done
//https://firebase.flutter.dev/docs/auth/usage

void main() {
  runApp(GoogleLoginApp());
}

class GoogleLoginApp extends StatefulWidget {
  const GoogleLoginApp({Key? key}) : super(key: key);

  @override
  _GoogleLoginAppState createState() => _GoogleLoginAppState();
}

class _GoogleLoginAppState extends State<GoogleLoginApp> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Google Demo (Logged ' + (user == null ? 'out' : 'in') + ')'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  child: Text('Sign In'),
                  onPressed: user != null
                      ? null
                      : () async {
                          await _googleSignIn.signIn();
                          setState(() {});
                        }),
              ElevatedButton(
                  child: Text('Sign Out'),
                  onPressed: user == null
                      ? null
                      : () async {
                          await _googleSignIn.signOut();
                          setState(() {});
                        }),
            ],
          ),
        ),
      ),
    );
  }
}
