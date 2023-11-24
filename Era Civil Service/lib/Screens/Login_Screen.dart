import 'dart:convert';

import 'package:eraupsc/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'Home_Screen.dart';
import 'Signup_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Future<String?> _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    var response = await http.post(
      Uri.parse('https://theeracivilservice.com/api/users'),
      body: {'email': email, 'password': password},
    );

    print('Response Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      String? token = jsonResponse['token'];
      int? userId = jsonResponse['id'];
      String? status = jsonResponse['status'];

      if (status == 'success') {
        if (token != null) {
          print(userId);
          // Check if the email is verified

          SharedPreferences prefs = await SharedPreferences.getInstance();
          // ignore: unused_local_variable
          bool isLoggedIn = await prefs.setBool('isLoggedIn', true);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => MyApp(),
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Email not verified'),
                content: Text('Please verify your email before logging in.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login failed'),
            content: Text('Please check your credentials and try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      print('Login failed');
    }
    return null;
  }

  bool isclicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset('assets/logo.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: 'Enter your Email',
                          hintStyle:
                              GoogleFonts.dmSans(fontWeight: FontWeight.w600),
                          label: Text('Email'),
                          labelStyle: GoogleFonts.dmSans(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Password';
                          }
                          return null;
                        },
                        obscureText: isclicked,
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          iconColor: Colors.black,
                          fillColor: Colors.black,
                          suffixIcon: IconButton(
                              icon: isclicked
                                  ? Icon(
                                      Icons.remove_red_eye_outlined,
                                    )
                                  : Icon(Icons.done),
                              onPressed: () {
                                setState(() {
                                  isclicked = !isclicked;
                                });
                              }),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: 'Enter your Password',
                          hintStyle:
                              GoogleFonts.dmSans(fontWeight: FontWeight.w600),
                          label: Text('Password'),
                          labelStyle: GoogleFonts.dmSans(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.blue[900]),
                      height: 50,
                      width: 200,
                      child: TextButton(
                          onPressed: () {
                            _login();
                          },

                          //_login,
                          child: Text(
                            'Log in',
                            style: GoogleFonts.dmSans(
                                fontSize: 25, color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account",
                          style: GoogleFonts.dmSans(fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ));
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ))
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
