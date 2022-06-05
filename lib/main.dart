// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App')),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            child: Container(
              width: double.infinity,
              child: Text('CHART!!'),
            ),
            elevation: 5,
          ),
          Card(
            child: Text('List of TX'),
          ),
        ],
      ),
    );
  }
}
