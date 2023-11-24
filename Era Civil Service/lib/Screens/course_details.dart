import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eraupsc/Screens/materials.dart';
import 'package:eraupsc/Screens/mcq.dart';
import 'package:eraupsc/Screens/test.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class CourseDetail extends StatefulWidget {
  // final int id;
  Map<String, dynamic> courses;
  CourseDetail(this.courses, {Key? key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  List<dynamic> coursedetails = [];
  var course;
  var imageurl;

  @override
  void initState() {
    super.initState();
    _fetchCourses();
  }

  Future<void> _fetchCourses() async {
    var response =
        await http.get(Uri.parse('https://theeracivilservice.com/api/courses'));

    if (response.statusCode == 200) {
      setState(() {
        final _course = json.decode(response.body);
        course = _course;
        imageurl = course[1]['image'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Column(children: [
                  Card(
                    color: Colors.blue[50],
                    margin: EdgeInsets.all(0),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Container(
                        height: size.height * 0.35,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: Colors.blue[50],
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
                            child: CachedNetworkImage(
                              placeholder: (context, url) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              fit: BoxFit.fill,
                              imageUrl:
                                  'https://theeracivilservice.com/storage/${widget.courses['image']}',
                            )

                            // Image.network(
                            //   'https://theeracivilservice.com/storage/${widget.courses['image']}',
                            //   fit: BoxFit.fill,
                            // ),
                            )),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.15,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceAround, // To space the cards evenly
                      children: <Widget>[
                        // Card 1 - Test
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return TestsPage(
                                //  userId: 1,
                                courseId: widget.courses['id'],
                              );
                            }));
                          },
                          child: Container(
                            height: size.height * 0.13,
                            width: size.width * 0.3,
                            child: Card(
                              color: Colors.blue[400],
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.2,
                                      child: Image.asset('assets/test.png')),
                                  Text(
                                    "Test",
                                    style: TextStyle(fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Card 2 - MCQ
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return McqPage(testId: 1);
                            }));
                          },
                          child: Container(
                            height: size.height * 0.13,
                            width: size.width * 0.3,
                            child: Card(
                              color: Colors.red[200],
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.2,
                                      child: Image.asset('assets/exam.png')),
                                  Text("MCQ", style: TextStyle(fontSize: 17))
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // int courseId = int.parse(widget.courses['id']);
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return MaterialsPage(
                                courseId: widget.courses['id'],
                                userId: 1,
                              );
                            }));
                          },
                          child: Container(
                            height: size.height * 0.13,
                            width: size.width * 0.3,
                            child: Card(
                              color: Colors.purple[200],
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.2,
                                      child:
                                          Image.asset('assets/material.png')),
                                  Text("Materials",
                                      style: TextStyle(fontSize: 17))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                Positioned(
                  top: 7,
                  left: 7,
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.13,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                        //    size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text("${widget.courses['heading']}",
                style: TextStyle(fontSize: 25)),

            Text(
              "${widget.courses['description']}",
              style: TextStyle(fontSize: 20),
            ),
            // Text.rich(TextSpan(text: "${widget.courses['description']}"))
          ],
        ),
      ),
    );
  }
}