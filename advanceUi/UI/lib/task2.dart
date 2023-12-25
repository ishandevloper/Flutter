import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isChecked = false; // This variable will hold the checkbox state
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        // Background image using a Container with a DecorationImage
        Positioned(
          right: 190,
          bottom: 540,
          child: Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Images/1.jpg'),
              ),
            ),
          ),
        ),
    
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 200, right: 230), // Adjust padding as needed
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sign In ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            ),
          ),
        ),
    
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 200, right: 50), // Adjust padding as needed
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sign Up ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            ),
          ),
        ),
        Positioned(
          top: 260,
          left: 35,
          child: Text(
            'E-mail address',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 5,
            right: 20,
          ),
          margin: EdgeInsets.only(top: 280, left: 20),
          height: 55,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email, size: 25, color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
    
        Positioned(
          top: 360,
          left: 35,
          child: Text(
            'Enter Password',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 5,
            right: 20,
          ),
          margin: EdgeInsets.only(top: 380, left: 20),
          height: 55,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: TextField(
            
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye_outlined,size: 25, color: Colors.black),
              prefixIcon: Icon(Icons.lock, size: 25, color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
    
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 430, left: 240),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
    
        Container(
          margin: EdgeInsets.only(top: 440, left: 25),
          child: Row(
            children: [
              Text(
                "Remember Me",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Checkbox(
                  value: _isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked = newValue!;
                    });
                  }),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
              padding: const EdgeInsets.only(top: 510, left: 70, right: 70),
              child: Container(
                  height: 55,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(color: Colors.grey, width: 0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: FittedBox(
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ))),
        ),
        Positioned(
          top: 580,
          left: 25,
          right: 25,
          child: Text(
            '────────────── OR ───────────────',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 615,
          left: 150,
          right: 25,
          child: Text(
            'Sign in Using:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          height: 1360,
          left: 35,
          right: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/Images/2.png',
                ),
                radius: 25,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/Images/3.pg',
                ),
                radius: 25,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/Images/4.png',
                ),
                radius: 25,
              )
            ],
          ),
        )
      ])),
    );
  }
}
