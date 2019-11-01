import 'package:flutter/material.dart';

class Controller extends StatelessWidget {
  final Function buttonHandler;
  static String buttonText = "Press me";

  Controller(this.buttonHandler);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 24),
      ),
      color: Colors.black,
      textColor: Colors.white,
      onPressed: buttonHandler,
    );
  }
}
