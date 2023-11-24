import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Trail extends StatefulWidget {
  const Trail({super.key});

  @override
  State<Trail> createState() => _TrailState();
}

class _TrailState extends State<Trail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage("lib/images/005.jpg"),
            width: 300,),
            SizedBox(height: 50),
            
           SpinKitSpinningLines(
  color: Colors.black,
  size: 50.0,
  ),

          ],
        ),
      ),
    );
    
  }
}