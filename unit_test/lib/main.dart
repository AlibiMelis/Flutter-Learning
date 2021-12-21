import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  HomeApp createState() => HomeApp();
}

class HomeApp extends State<MyApp> {
  TextEditingController input = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's Test This!"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 250,
                      child: TextField(
                        key: Key('textfield'),
                        controller: input,
                      ),
                    ),
                    RaisedButton(
                      child: Text('Done'),
                      key: Key('Done'),
                      onPressed: () {
                        setState(() {
                          text = input.text;
                        });
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
