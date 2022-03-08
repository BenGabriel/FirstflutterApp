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
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: Column(
            children: [
              Container(
                // width: double.infinity,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(),
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text('Ben Gabriel'),
                  accountEmail: Text('ben@gmail.com'),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Text('Open Drawer')),
        );
      }),
    );
  }
}

// child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(color: Colors.pink),
//                 child: Container(
//                   color: Colors.green,
//                   child: Text('Drawer Header'),
//                 ),
//               ),
//               ListTile(
//                 title: Text('Item 1'),
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 title: Text('Item 2'),
//                 onTap: () {},
//               ),
//             ],
//           ),