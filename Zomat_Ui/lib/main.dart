// import 'package:flutter/material.dart';
// import 'package:zomato/Delivery.dart';
// import 'bottom_nav.dart';
// import 'dining.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         primarySwatch: Colors.blue,
//       ),
//       home:  Homepage(),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zomato/Delivery.dart';
import 'package:zomato/dining.dart';
import 'package:zomato/wallet.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    Wallet(),
    dining()
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
            selectedIndex: _currentIndex,
            onTabChange: onTabTapped ,
            tabBackgroundColor: Colors.grey[400]!,
            activeColor: Colors.black,
            tabBorder: Border.all(color: Colors.grey[800]!, width: 0.5),
            padding: EdgeInsets.all(16),
            gap: 8,
            tabs: const [
              GButton(icon: Icons.delivery_dining, text: 'Delivery'),
              GButton(icon: Icons.dining, text: 'Dining'),
              GButton(icon: Icons.wallet, text: 'Money'),
              GButton(icon: Icons.outdoor_grill_sharp, text: 'Dineout')
            ],
          ),
        ),
      ),
    );
  }
}
