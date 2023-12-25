
import 'package:demo/food2/menu.dart';
import 'package:demo/task1.dart';
import 'package:demo/task2.dart';
import 'package:demo/task3.dart';
import 'package:demo/tasks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(cardView());
}

class cardView extends StatelessWidget {
  const cardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menu(),
    );
  }
}
