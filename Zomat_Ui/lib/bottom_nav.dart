/*import 'package:flutter/material.dart';
import 'package:zomato/Delivery.dart';
import 'package:zomato/dining.dart';

class Bottom_navbar extends StatefulWidget {
  const Bottom_navbar({super.key});

  @override
  State<Bottom_navbar> createState() => _Bottom_navbarState();
}

class _Bottom_navbarState extends State<Bottom_navbar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Homepage(),
    dining(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      home
      );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Delivery.dart ';
import 'dining.dart';

class MyAppx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Homepage(),
    dining(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
          child: GNav(
            tabBackgroundColor: Colors.grey[400]!,
            onTabChange: onTabTapped,
            activeColor: Colors.black,
            tabBorder: Border.all(color: Colors.white!, width: 2),
            padding: EdgeInsets.all(16),
            gap: 8,
            tabs: const [
              GButton(icon: Icons.delivery_dining, text: 'Delivery'),
              GButton(icon: Icons.dining, text: 'Dining'),
              GButton(icon: Icons.wallet, text: 'Money'),
              GButton(icon: Icons.outdoor_grill_sharp, text: 'Blinkit')
            ],
          ),
        ),
      ),
    );
  }
}
