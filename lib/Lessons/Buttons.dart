// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
              label: Text('Hi'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.blue)),
              // style: ElevatedButton.styleFrom(
              // primary: Colors.red,
              // onPrimary: Colors.yellow,
              // onSurface: Colors.red,
              // minimumSize: Size(300, 100)
              // elevation: 0,
              // textStyle: TextStyle(fontSize: 24)
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(36)
              // )
              // shape: CircleBorder(
              //   side: BorderSide(
              //     color: Colors.red,
              //   ),
              // ),
              // minimumSize: Size(300, 100)
              // ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
              style: TextButton.styleFrom(primary: Colors.green),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.amber,
                  side: BorderSide(color: Colors.blue, width: 3)),
            )
          ],
        ),
      ),
    );
  }
}
