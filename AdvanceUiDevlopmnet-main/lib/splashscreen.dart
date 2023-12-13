
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'login.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // Simulate a delay for the splash screen (e.g., 2 seconds)
//     Future.delayed(Duration(seconds: 3), () {
//       // Navigate to the main screen after the delay
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => TravelPage()),
//       );
//     });

//   }
// }

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Your main app content goes here
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Image(image: AssetImage("lib/images/005.jpg"),
//             width: 300,),
//             SizedBox(height: 50),

//            SpinKitSpinningLines(
//   color: Colors.black,
//   size: 50.0,
//   ),

//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: SplashScreen(),
//   ));
// }

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to display the splash screen for a certain time (e.g., 3 seconds)
    Future.delayed(Duration(seconds: 3), () {
      // After the delay, navigate to the desired page (e.g., HomePage)
      // For this example, let's navigate to a dummy home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Loginpage(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("lib/images/011.png"), width: 300),
            SizedBox(height: 35),
            SpinKitThreeBounce(
              color: Colors.black,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}