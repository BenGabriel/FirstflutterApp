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
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter Code Exercise'),
        ),
        body: Column(
          mainAxisAlignment: number == 0
              ? MainAxisAlignment.start
              : number == 1
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: number == 0
                  ? MainAxisAlignment.start
                  : number == 1
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (number == 2) {
                        number = 0;
                      } else {
                        number = number + 1;
                      }
                    });
                  },
                  child: Text('Hi'),
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            onPressed: null,
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
