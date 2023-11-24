import 'package:cached_network_image/cached_network_image.dart';

import 'package:eraupsc/Screens/mcq.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestsPage extends StatefulWidget {
  final int courseId;

  TestsPage({required this.courseId});

  @override
  _TestsPageState createState() => _TestsPageState();
}

class _TestsPageState extends State<TestsPage> {
  List<dynamic> _tests = [];

  @override
  void initState() {
    super.initState();
    _fetchTests();
  }

  Future<void> _fetchTests() async {
    var response = await http.get(Uri.parse(
        'https://theeracivilservice.com/api/exams/${widget.courseId}'));
    if (response.statusCode == 200) {
      setState(() {
        _tests = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Tests',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blue[50],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.blue[50],
        child: _tests.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _tests.length,
                itemBuilder: (context, index) {
                  final test = _tests[index];
                  final imageUrl =
                      'https://theeracivilservice.com/storage/${test['image']}'; // Image URL

                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25.0), // Add spacing between tiles
                    child: Card(
                      elevation: 25.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ListTile(
                        leading: CachedNetworkImage(imageUrl: imageUrl,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        //  Image.network(
                        //   imageUrl,
                        //   width: 80,
                        //   height: 80,
                        //   fit: BoxFit.cover,
                        // ),
                        title: Text(
                          test['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(test['description']),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    McqPage(testId: test['id']),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey[100],
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          child: Text('Take Test'),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}