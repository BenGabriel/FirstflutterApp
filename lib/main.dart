// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool myNewButton = false;
  String myText = 'Hello';
  num check = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter Coding Excersise'),
        ),
        body: Column(
          crossAxisAlignment: myNewButton ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myNewButton = !myNewButton;
                });
              },
              child: Text('My Button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, onPrimary: Colors.blue),
            ),
            Container(
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(myNewButton ? "This is true" : myText),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
