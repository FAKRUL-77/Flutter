import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import '../widgets/auth/auth_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  var isLoading = false;

  void _submitAuthForm(
    String email,
    String password,
    String username,
    File image,
    bool isLogin,
    BuildContext ctx,
  ) async {
    UserCredential authResult;

    try {
      setState(() {
        isLoading = true;
      });
      if (isLogin) {
        authResult = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        authResult = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        UploadTask uploadTask;

        final Reference ref = FirebaseStorage.instance
            .ref()
            .child('user_image')
            .child(authResult.user.uid + '.jpg');
        uploadTask = ref.putFile(image).whenComplete(() async {
          final url = await ref.getDownloadURL();

          await FirebaseFirestore.instance
              .collection('users')
              .doc(authResult.user.uid)
              .set({
            'username': username,
            'email': email,
            'image_url': url,
          });
        });
      }
    } on PlatformException catch (err) {
      var message = 'An error occurred';

      if (err.message != null) {
        message = err.message;
      }

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
      setState(() {
        isLoading = false;
      });
    } catch (err) {
      print(err);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AuthForm(_submitAuthForm, isLoading),
    );
  }
}
