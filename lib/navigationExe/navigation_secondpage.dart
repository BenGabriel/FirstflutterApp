// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

// Remember to import this file into the main file for routing

class SecondPage extends StatelessWidget {
  static const routeName = 'navigation_secondpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            child: ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Title'),
            ),
          ),
          Container(
            color: Colors.red,
            child: ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Title'),
            ),
          )
        ],
      ),
    );
  }
}
