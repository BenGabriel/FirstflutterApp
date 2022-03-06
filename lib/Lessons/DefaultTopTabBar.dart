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
      home: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Demo'),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              tabs: const [
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
              ],
            ),
          ),
          body: TabBarView(
            children: const [
              Center(
                child: Text("it's car here"),
              ),
              Center(
                child: Text("it's bike here"),
              ),
              Center(
                child: Text("it's transit here"),
              ),
              Center(
                child: Text("it's car here"),
              ),
              Center(
                child: Text("it's bike here"),
              ),
              Center(
                child: Text("it's transit here"),
              ),
              Center(
                child: Text("it's car here"),
              ),
              Center(
                child: Text("it's bike here"),
              ),
              Center(
                child: Text("it's transit here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
