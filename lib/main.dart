import 'package:flutter/material.dart';
import 'test1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _info = const [
    {'question': 'Name', 'answer': 'Sanjoli goyal'},
    {'question': 'Degree', 'answer': 'b.tech'},
  ];
  var _index = 0;
  void _answer() {
    setState(() {
      _index = _index + 1;
    });
    print('abd');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Info'),
        ),
        body: Test1(
          reseHand: _answer,
          question: _info,
          index: _index,
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
