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
  String _value = 'Hello Raised Button';
  String _flatValue = 'Hello FlatButton';
  int _numValue = 0;

  void _onPressed(String value) {
    setState(() {
      _value = value;
      // 'My name is Ayo';
    });
  }

  void _onPressedFlatButton() {
    setState(() {
      _flatValue = new DateTime.now().toString();
    });
  }

  void _add() {
    setState(() {
      _numValue++;
    });
  }

  void _subtract() {
    setState(() {
      _numValue--;
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
            new ElevatedButton(
              onPressed: () => _onPressed('Yes'),
              // ignore: prefer_const_constructors
              child: new Text('Click here'),
            ),
            new Text(_flatValue),
            new TextButton(
              onPressed: _onPressedFlatButton,
              // ignore: prefer_const_constructors
              child: new Text('Click here'),
            ),
            new Text('value = $_numValue'),
            new IconButton(onPressed: _add, icon: const Icon(Icons.add)),
            new IconButton(onPressed: _subtract, icon: const Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
