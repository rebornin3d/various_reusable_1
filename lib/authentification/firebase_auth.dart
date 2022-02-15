// Gist link: https://gist.github.com/puf/e958143be44d39d1203abfbc70082d7d

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // The first step to using Firebase is to configure it so that
  // our code can find the Firebase project on\ the servers. This
  // is not a security risk, as explained here: https://stackoverflow.com/a/37484053
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAhE5iTdU1MflQxb4_M_uHiXJR9EC_mE_I",
          authDomain: "nanochat.firebaseapp.com",
          projectId: "firebase-nanochat",
          messagingSenderId: '137230848633',
          appId: '1:137230848633:web:89e9b54f881fa0b843baa8'));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: StreamBuilder<User?>(
              stream: auth.authStateChanges(),
              builder: (context, snapshot) {
                return Column(children: [
                  auth.currentUser != null
                      ? Row(children: [
                          ElevatedButton(
                            style: style,
                            onPressed: () {
                              auth.signOut();
                            },
                            child: const Text("Sign out"),
                          ),
                          ElevatedButton(
                            style: style,
                            onPressed: () {
                              auth.currentUser!.delete();
                            },
                            child: const Text("Delete current user"),
                          ),
                        ])
                      : Wrap(children: [
                          ElevatedButton(
                            style: style,
                            child: const Text("Sign in anonymously"),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "TODO: sign the user in anonymously")));
                            },
                          ),
                          ElevatedButton(
                            style: style,
                            child:
                                const Text("Create user with email+password"),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "TODO: Create user with email/password")));
                            },
                          ),
                          ElevatedButton(
                            style: style,
                            child: const Text("Sign in with email+password"),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "TODO: sign the user in with email/password")));
                            },
                          ),
                          ElevatedButton(
                              style: style,
                              child: const Text("Sign in with Google"),
                              onPressed: () async {
                                GoogleAuthProvider googleProvider =
                                    GoogleAuthProvider();

                                googleProvider.addScope(
                                    'https://www.googleapis.com/auth/contacts.readonly');
                                //googleProvider.setCustomParameters({ 'login_hint': 'user@example.com' });
                                await FirebaseAuth.instance
                                    .signInWithPopup(googleProvider);
                              }),
                          ElevatedButton(
                              style: style,
                              child: const Text("Sign in with phone number"),
                              onPressed: () async {
                                FirebaseAuth auth = FirebaseAuth.instance;

                                ConfirmationResult confirmationResult =
                                    await auth.signInWithPhoneNumber(
                                        '+44 7123 123 456');
                                UserCredential userCredential =
                                    await confirmationResult.confirm('123456');
                                print('$userCredential');
                              }),
                        ]),
                  UserPanel()
                ]);
              })),
    );
  }
}

class UserPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    return user == null
        ? const Text("No current user")
        : Column(children: [
            Text("UID: " + user.uid),
            Text("isAnonymous: ${user.isAnonymous}"),
            Text("Email: ${user.email} (" +
                (user.emailVerified ? "" : "not ") +
                "verified)"),
            Text("displayName: ${user.displayName}"),
            Text(
                "metadata: creationTime=${user.metadata.creationTime} lastSignInTime=${user.metadata.lastSignInTime}"),
            Text("providerData.providers: " +
                user.providerData.map((provider) {
                  return provider.providerId;
                }).join(", ")),
            Text("\n\n" + user.toString()),
          ]);
  }
}
