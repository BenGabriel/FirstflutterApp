// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY NEW FLUTTER APP'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('My Button'),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.indigo,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                child: Text('Whatever'),
              ),
              Image.network(
                  'https://megaport.hu/media/king-include/uploads/2018/12/christmas-karacsony-6-2117999109.jpg'),
              Image.asset("assets/images/rielx.jpg")
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
        ),
      ),
    );
  }
}
