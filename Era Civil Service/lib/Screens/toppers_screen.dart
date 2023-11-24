import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '';

import '../main.dart';

class ToppersScreen extends StatefulWidget {
  const ToppersScreen({super.key});
  @override
  State<ToppersScreen> createState() => _ToppersScreenState();
}

class _ToppersScreenState extends State<ToppersScreen> {
  @override
  void initState() {
    _fetchtoppers();
    // TODO: implement initState
    super.initState();
  }

  List<dynamic> toppers = [];
  Future<void> _fetchtoppers() async {
    var response =
        await http.get(Uri.parse('https://theeracivilservice.com/api/toppers'));

    if (response.statusCode == 200) {
      setState(() {
        final _toppers = json.decode(response.body);
        toppers = _toppers;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
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
          "Toppers List",
          style: GoogleFonts.dmSans(fontSize: 25, color: Colors.black),
        ),
      ),
      body: toppers.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: toppers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Colors.grey[100],
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              child: Column(children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      child: Image.network(
                                        'https://theeracivilservice.com/storage/${toppers[index]['image']}',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '${toppers[index]['name']}',
                                        style: GoogleFonts.dmSans(fontSize: 18),
                                      ),
                                      Text(
                                        'Year : ${toppers[index]['year']}',
                                        style: GoogleFonts.dmSans(fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
