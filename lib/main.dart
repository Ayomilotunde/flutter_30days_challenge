// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = 'Hello World A';

  void _onPressed() {
    setState(() {
      _value = 'My name is Ayo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // ignore: prefer_const_constructors
        title: new Text('My Title'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            // ignore: prefer_const_constructors
            new Text(_value),
            // ignore: deprecated_member_use, prefer_const_constructors
            new RaisedButton(
              onPressed: _onPressed,
              // ignore: prefer_const_constructors
              child: new Text('Click here'),
            )
          ],
        ),
      ),
    );
  }
}
