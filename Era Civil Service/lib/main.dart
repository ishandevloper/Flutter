import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Home_Screen.dart';
import 'Screens/Login_Screen.dart';
import 'Screens/Signup_Screen.dart';
import 'Screens/course_screen.dart';
import 'Screens/toppers_screen.dart';
import 'Screens/video_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamController<bool> _isLoggedInStreamController = StreamController<bool>();

  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    CorseScreen(),
    ToppersScreen(),
    VideoScreen(),
  ];

  @override
  void initState() {
    super.initState();
    initialiser();
  }

  void initialiser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    _isLoggedInStreamController.add(isLoggedIn);
  }

  @override
  void dispose() {
    _isLoggedInStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.dmSans().fontFamily),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<bool>(
        stream: _isLoggedInStreamController.stream,
        initialData: false, // Initial value while loading
        builder: (context, snapshot) {
          final bool? userLoggedIn = snapshot.data;
          return userLoggedIn!
              ? Scaffold(
                  body: _screens[_currentIndex],
                  bottomNavigationBar: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black.withOpacity(.1),
                        ),
                      ],
                    ),
                    child: SafeArea(
                      child: GNav(
                        gap: 8,
                        activeColor: Colors.black,
                        color: Colors.black,
                        iconSize: 24,
                        padding: EdgeInsets.all(15),
                        tabMargin: EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                          left: 5,
                          right: 5,
                        ),
                        backgroundColor: Colors.blue[50]!,
                        duration: Duration(milliseconds: 500),
                        tabBackgroundColor: Colors.blue[100]!,
                        tabs: [
                          GButton(
                            icon: Icons.home,
                            text: 'Home',
                          ),
                          GButton(
                            icon: Icons.menu_book_sharp,
                            text: 'Course',
                          ),
                          GButton(
                            icon: Icons.star,
                            text: 'Toppers',
                          ),
                          GButton(
                            icon: Icons.video_camera_back,
                            text: 'Videos',
                          ),
                        ],
                        selectedIndex: _currentIndex,
                        onTabChange: (index) {
                          if (mounted) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                )
              : LoginScreen();
        },
      ),
    );
  }
}