// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 100,
        // backgroundColor: Colors.yellow,
        // elevation: 10,
        // toolbarHeight: 100,
        // toolbarOpacity: 0.8,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),
        title: Text('Home Page'),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.home),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Next page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _pinned = false;
  bool _snap = true;
  bool _floating = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 170.0,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text('Sliver AppBar'),
              collapseMode: CollapseMode.parallax,
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.grey[300],
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}
