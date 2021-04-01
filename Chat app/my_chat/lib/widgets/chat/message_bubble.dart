import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_chat/widgets/chat/circular_profile.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final Key key;
  final String username;
  final String imageUrl;

  MessageBubble(this.message, this.isMe, this.username, this.imageUrl,
      {this.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isMe) CircularProfile(imageUrl),
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[300] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: isMe ? Radius.circular(0) : Radius.circular(10),
              bottomRight: !isMe ? Radius.circular(0) : Radius.circular(10),
            ),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  color: isMe
                      ? Colors.black
                      : Theme.of(context).accentTextTheme.title.color,
                ),
                textAlign: isMe ? TextAlign.start : TextAlign.end,
              ),
            ],
          ),
        ),
        if (!isMe) CircularProfile(imageUrl),
      ],
    );
  }
}
