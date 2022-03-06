// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  static const routeName = 'fourth_page';
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  TextEditingController _controller = TextEditingController();

  String inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: ScrollPhysics(parent: null),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: TextFormField(
                controller: _controller,
              ),
            );
          },
          itemCount: 50,
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.grey),
        onPressed: () {
          setState(() {
            inputText = _controller.text;
          });
        },
        child: Text(
          inputText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
