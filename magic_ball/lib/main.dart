import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int n = 0;
  String text = 'Tap on me!';

  void randomise() {
    n = Random().nextInt(4);

    switch (n) {
      case 0: text = 'Yes';
      break;
      case 1: text = 'No';
      break;
      case 2: text = 'Absolutely';
      break;
      default: text = 'I have no idea';
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: Center(
        child: Expanded(
          child: FlatButton(
            padding: EdgeInsets.all(100.0),
            color: Colors.blue.shade700,
            child: Text(text),
            onPressed: () {
              setState(() {
                randomise();
              });
            },
          ),
        ),
      ),
    );
  }
}
