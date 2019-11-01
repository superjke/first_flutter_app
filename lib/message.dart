import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final List<String> messages;
  final int messageIndex;

  Message(this.messages, this.messageIndex);

  @override
  Widget build(BuildContext context) {
    return Text(
      messages[messageIndex],
      style: TextStyle(fontSize: 30),
    );
  }
}
