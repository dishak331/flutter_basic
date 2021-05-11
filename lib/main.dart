// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'dart:ffi';

import 'package:flutter/material.dart';
import './button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String message = "How are you?";

  void changeText() {
    setState(() {
      message = "Hope you are doing fine";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic App'),
        ),
        body: Column(
          children: [
            Text(message),
            TextControl(changeText),
          ],
        ),
      ),
    );
  }
}
