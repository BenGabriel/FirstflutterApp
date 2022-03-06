// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'navigation_secondpage.dart';

// remember to import this file into the main file

class MyNavigation extends StatefulWidget {
  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter coding Excercise'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/rielx.jpg'),
            Image.network(
                'https://megaport.hu/media/king-include/uploads/2018/12/christmas-karacsony-6-2117999109.jpg'),
            Image.asset('assets/images/rielx.jpg')
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SecondPage.routeName);
          },
          icon: Icon(Icons.home),
        ),
      ),
    );
  }
}
