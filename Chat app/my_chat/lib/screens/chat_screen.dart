import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_chat/widgets/chat/messages.dart';
import 'package:my_chat/widgets/chat/new_message.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List data;

  @override
  void initState() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReferrence =
        FirebaseFirestore.instance.collection('chat');

    collectionReferrence.snapshots().listen((d) {
      data = d.docs;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('My Chat'),
        actions: [
          DropdownButton(
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            items: [
              DropdownMenuItem(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Logout')
                    ],
                  ),
                ),
                value: 'logout',
              ),
            ],
            onChanged: (itemIdentifier) {
              if (itemIdentifier == 'logout') {
                FirebaseAuth.instance.signOut();
              }
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            Expanded(
              child: Messages(),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
