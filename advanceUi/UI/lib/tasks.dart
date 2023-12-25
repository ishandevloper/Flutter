import 'package:flutter/material.dart';

class tasks3 extends StatefulWidget {
  const tasks3({super.key});

  @override
  State<tasks3> createState() => _tasks3State();
}

class _tasks3State extends State<tasks3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Icon(Icons.menu),
                
              ),
            ),Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Icon(Icons.menu),
              ),
            )
          ],
        ),Column(
          children: [
            
               Text("Chose the "), Text("Food You Love "),
            
          ],
        )
      ],
    ),)); }
}