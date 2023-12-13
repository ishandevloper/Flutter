import 'package:flutter/material.dart';

import 'login.dart';

class SignupAccount extends StatefulWidget {
  const SignupAccount({super.key});

  @override
  State<SignupAccount> createState() => _SignupAccountState();
}

class _SignupAccountState extends State<SignupAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Background image using a Container with a DecorationImage
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/007.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),

      Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 40, right: 20), // Adjust padding as needed
          child: Text(
            """Create
Account""",
            style: TextStyle(
              fontSize: 35,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 175, left: 140),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/012.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
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
            prefixIcon: Icon(Icons.person, size: 25, color: Colors.black),
            border: InputBorder.none,
            hintText: 'Name ',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),

      Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 20,
        ),
        margin: EdgeInsets.only(top: 450, left: 20),
        height: 55,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 0.7),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.phone_iphone, size: 25, color: Colors.black),
            border: InputBorder.none,
            hintText: 'Enter Phone Number ',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),

      Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 20,
        ),
        margin: EdgeInsets.only(top: 520, left: 20),
        height: 55,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 0.7),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock, size: 25, color: Colors.black),
            border: InputBorder.none,
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),

      Container(
        margin: EdgeInsets.only(),
        child: Padding(
            padding: const EdgeInsets.only(top: 600, left: 20),
            child: Text(
              'Sign Up ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),

      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 670, left: 15),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

      Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 575, left: 300),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_circle_right_sharp,
                          size: 60,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
        ],
      ),
    ]));
  }
}
