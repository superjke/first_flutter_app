import 'package:flutter/material.dart';

import './controller.dart';
import './message.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _messageIndex = 0;
  static const _messages = ['Hello', 'Welcome', 'To My First App', 'I Hope You Like It =)'];
  static int _maxMessageIndex = _messages.length - 1;

  void _buttonHandler() {
    setState(() {
      if (_messageIndex == _maxMessageIndex) {
        _messageIndex = 0;
      } else {
        _messageIndex++; 
      }
    });
    print("_textIndex: " + _messageIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Message(_messages, _messageIndex),
            Controller(_buttonHandler),
          ],
        ),
      ),
    );
  }
}
