import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  List data;
  @override
  Widget build(BuildContext context) {
    CollectionReference collectionReferrence =
        FirebaseFirestore.instance.collection('chats');

    collectionReferrence.snapshots().listen((d) {
      data = d.docs;
    });

    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('chats').snapshots(),
        builder: (ctx, streamSnapshot) {
          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: streamSnapshot.data.docs.length,
            itemBuilder: (ctx, index) => Container(
              padding: EdgeInsets.all(10),
              child: Text(streamSnapshot.data.docs[index]['name']),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Map<String, dynamic> data = {'name': 'Fakrul Islam'};
          CollectionReference collectionReferrence =
              FirebaseFirestore.instance.collection('chats');
          collectionReferrence.add(data);
        },
      ),
    );
  }
}
