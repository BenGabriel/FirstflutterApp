// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const routeName = 'third_page';

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController _controller = TextEditingController();

  String userInput = 'Nothing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity, //make the width to full the screen
              color: Colors.purple[300],
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    userInput = _controller.text;
                  });
                },
                child: Text(
                  'Display value',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              child: TextFormField(
                controller: _controller,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.pink,
              child: Center(
                child: Text(
                  userInput,
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
