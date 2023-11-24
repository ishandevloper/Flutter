import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';
import 'package:whatsapp_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui/screens/web_screen_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsAppUi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // ignore: deprecated_member_use
        scaffoldBackgroundColor: backgroundColor,
      ), 
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
        ),
    );
  }
}

