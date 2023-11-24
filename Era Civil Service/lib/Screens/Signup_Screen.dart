import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'Home_Screen.dart';
import 'Login_Screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isSubmitting = false;

  Future<String?> _register() async {
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String mobile = _mobileController.text;

    var response = await http.post(
      Uri.parse('https://theeracivilservice.com/api/register'),
      body: {
        'name': name,
        'email': email,
        'password': password,
        'mobile': mobile,
      },
    );

    print("${response.statusCode}");

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      String? token = jsonResponse['token'];
      int? userId = jsonResponse['userId'];
      print('goes into 200 code');

      if (token != null) {
        print('token != null $token');
        
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool isLoggedIn = await prefs.setBool('isLoggedIn', true);
        print('signup screen  called $isLoggedIn is bool value');

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => MyApp(),
          ),
        );
      } else {
        print('Registration failed: Token not found');
      }
    } else if (response.statusCode == 409) {
      var jsonResponse = jsonDecode(response.body);
      String? errorMessage = jsonResponse['message'];
      if (errorMessage == 'Email already exists') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Registration Failed'),
              content: Text('The provided email is already registered.'),
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
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Registration Failed'),
              content: Text('Please Try Again Later'),
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
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });
      _register();
    }
  }

  bool isClicked = true;

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
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      hintText: 'Enter your Name',
                      hintStyle:
                          GoogleFonts.dmSans(fontWeight: FontWeight.w600),
                      label: Text('Name'),
                      labelStyle: GoogleFonts.dmSans(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
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
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    obscureText: isClicked,
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      iconColor: Colors.black,
                      fillColor: Colors.black,
                      suffixIcon: IconButton(
                        icon: isClicked
                            ? Icon(
                                Icons.remove_red_eye_outlined,
                              )
                            : Icon(Icons.done),
                        onPressed: () {
                          setState(() {
                            isClicked = !isClicked;
                          });
                        },
                      ),
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: _mobileController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a phone number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      hintText: 'Phone Number',
                      hintStyle:
                          GoogleFonts.dmSans(fontWeight: FontWeight.w600),
                      label: Text('Number'),
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
                    color: Colors.blue[900],
                  ),
                  height: 50,
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      _submitForm();
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.dmSans(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}