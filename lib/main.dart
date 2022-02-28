// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              // MaterialPageRoute(builder: (context) {
              //   return SecondPage();
              // }),
              // CupertinoPageRoute(builder: (context) {
              //   return SecondPage();
              // }),
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => SecondPage(),
                transitionsBuilder: (c, a1, a2, child) => FadeTransition(
                  opacity: a1,
                  child: child,
                ),
              ),
            );
          },
          child: Text('First Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return FirstPage();
              }),
            );
          },
          child: Text('Second Page'),
        ),
      ),
    );
  }
}
