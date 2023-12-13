import 'package:digitalsociety/signup.dart';
import 'package:flutter/material.dart';

import 'chairmen.dart';
import 'members.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String selectedRadioValue = '';

  setSelectedRadioValue(String value) {
    setState(() {
      selectedRadioValue = value;
    });
  }

  bool _isChecked = false; // This variable will hold the checkbox state
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
        // Add your other widgets on top of the background here
        // For example, you can add a Centered text widget:

        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 40, right: 10), // Adjust padding as needed
            child: Text(
              'Welcome ',
              style: TextStyle(
                fontSize: 35,
               // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 175, left: 140),
          child: Column(
            children: [
              Container(
                height: 160,
                width: 270,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/009.jpg'),
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
          margin: EdgeInsets.only(top: 350, left: 20),
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
              hintText: '"Enter Phone Number "',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Container(
          padding: EdgeInsets.only(
            left: 5,
            right: 20,
          ),
          margin: EdgeInsets.only(top: 420, left: 20),
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
              hintText: '"Password "',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 470, left: 25),
          child: Row(
            children: [
              Text("Remember Me"),
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

        Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 500,
              ),
              child: Column(children: <Widget>[
                RadioListTile(
                  title: Text('Chairman'),
                  value: 'Option 1',
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    print(value);
                    setSelectedRadioValue(value!);
                  },
                ),
              ]),
            ),
          ],
        ),

        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 500, left: 240),
              child: Column(children: <Widget>[
                RadioListTile(
                  title: Text('Member'),
                  value: 'Option 2',
                  groupValue: selectedRadioValue,
                  onChanged: (value) {
                    setSelectedRadioValue(value!);
                  },
                ),
              ]),
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.only(),
          child: Padding(
              padding: const EdgeInsets.only(top: 600, left: 20),
              child: Text(
                'Sign in ',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupAccount()));
                    },
                    child: Text(
                      "Sign Up",
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
              padding: const EdgeInsets.only(top: 670, left: 220),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
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
                padding: const EdgeInsets.only(top: 570, left: 300),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        if(selectedRadioValue == 'Option 1')
                           {  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChairmenPage()));}
                            if(selectedRadioValue == 'Option 2'){Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MemberPage()));}
                      },
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
      ]),
    );
  }
}
