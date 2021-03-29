import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/auth/auth_form.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  void _submitAuthForm(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
  ) async {
    UserCredential authResult;

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: "barry.allen@example.com",
              password: "SuperSecretPassword!");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    // try {
    //   if (isLogin) {
    //     authResult = await _auth.signInWithEmailAndPassword(
    //         email: email, password: password);
    //   } else {
    //     authResult = await _auth.createUserWithEmailAndPassword(
    //         email: email, password: password);
    //   }
    // } on PlatformException catch (err) {
    //   var message = 'An error occurred';

    //   if (err.message != null) {
    //     message = err.message;
    //   }

    //   Scaffold.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(message),
    //       backgroundColor: Theme.of(ctx).errorColor,
    //     ),
    //   );
    // } catch (err) {
    //   print(err);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AuthForm(_submitAuthForm),
    );
  }
}
