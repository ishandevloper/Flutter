import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              child: 
              Image.network("https://mcdonaldsblog.in/wp-content/uploads/2023/11/Craving-a-hearty-chicken-burger-2.png",fit:BoxFit.fill,),
              
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //       stops: [0.1, 0.4, 0.7, 0.9],
            //       colors: [
            //         Color(0xFF3594DD),
            //         Color(0xFF4563DB),
            //         Color(0xFF5036D5),
            //         Color(0xFF5B16D0),
            //       ],
            //     ),
            //   ),
            ),
            SafeArea(
              child: child!,
            ),
          ],
        ),
      ),
    );
  }
}
