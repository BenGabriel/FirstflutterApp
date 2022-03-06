// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../second_page.dart';
import '../third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffoldApp(),
      routes: {
        SecondPage.routeName: (_) => SecondPage(),
        ThirdPage.routeName: (_) => ThirdPage()
      },
    );
  }
}

class MyScaffoldApp extends StatefulWidget {
  @override
  State<MyScaffoldApp> createState() => _MyScaffoldAppState();
}

class _MyScaffoldAppState extends State<MyScaffoldApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              margin: EdgeInsets.all(20),
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
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
              icon: Icon(Icons.home),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ThirdPage.routeName);
              },
              icon: Icon(Icons.notifications_active),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
