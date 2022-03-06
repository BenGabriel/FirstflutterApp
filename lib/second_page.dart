// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const routeName = 'second_page';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  number = number + 1;
                });
              },
              child: Text('Add List Tile'),
            ),
            ListView.builder(
              physics:
                  ScrollPhysics(parent: null), // used to help for the scroll
              shrinkWrap: true, //always use when you use column in listview
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? Colors.blue : Colors.orange,
                  child: ListTile(
                    trailing: Icon(Icons.device_hub),
                    title: Text('Hello'),
                    leading: Icon(Icons.local_activity),
                    subtitle: Text('Subtitle'),
                  ),
                );
              },
              itemCount: number,
            ),
          ],
        ),
      ),
    );
  }
}
