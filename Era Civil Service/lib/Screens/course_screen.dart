import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'course_details.dart';

class CorseScreen extends StatefulWidget {
  const CorseScreen({super.key});
  @override
  State<CorseScreen> createState() => _CorseScreenState();
}

class _CorseScreenState extends State<CorseScreen> {
  @override
  void initState() {
    super.initState();
    _fetchCourses();
  }

  List<dynamic> _courses = [];

  Future<void> _fetchCourses() async {
    var response =
        await http.get(Uri.parse('https://theeracivilservice.com/api/courses'));
    if (response.statusCode == 200) {
      setState(() {
        _courses = json.decode(response.body);
        //print(_courses);
      });
    }
  }

  Future getStoredValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ??
        false; // Provide a default value if the key doesn't exist
    return isLoggedIn;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appBar = AppBar(
      leading: IconButton(
        onPressed: () async {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) {
              return MyApp();
            },
          ));
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.blue[50],
      title: Text(
        "Courses",
        style: GoogleFonts.dmSans(fontSize: 25, color: Colors.black),
      ),
    );

    final double appBarHeight = appBar.preferredSize.height;
    print(appBarHeight);
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.blue[50],
      body: _courses.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(children: [
                  Container(
                    height: size.height - appBarHeight,
                    child: ListView.builder(
                      itemCount: _courses.length,
                      itemBuilder: (context, index) {
                        var courses = _courses;
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CourseDetail(courses[index]),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 22.0, right: 22, bottom: 10, top: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                height: size.height * 0.13,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        height: size.height * 0.13,
                                        width: size.width * 0.3,
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topLeft: Radius.circular(20)),
                                            child: CachedNetworkImage(
                                              placeholder: (context, url) {
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              },
                                              fit: BoxFit.cover,
                                              imageUrl:
                                                  'https://theeracivilservice.com/storage/${courses[index]['image']}',
                                            )

                                            //  Image.network(errorBuilder:
                                            //       (context, error, stackTrace) {
                                            //     return Center( child: CircularProgressIndicator());
                                            //   },
                                            //   'https://theeracivilservice.com/storage/${courses[index]['image']}',
                                            //   fit: BoxFit.fill,
                                            // ),
                                            ),
                                      ),
                                    ),
                                    Column(
                                      //    mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            '${courses[index]['heading']}',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              '${courses[index]['sub_name']}',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 15)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              '₹${courses[index]['price']}',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ]),
              ),
            ),
    );
  }
}