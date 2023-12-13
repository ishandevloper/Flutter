import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  _openAddMemberBottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)));
          return Container(
            height: 450,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset("lib/images/020.jpg"),
                  height: 130,
                ),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Member Name',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'House Number',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
              ],
            ),
          );
        });
  }

  _openAddcomplaintBottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)));
          return Container(
            height: 450,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset("lib/images/025.png"),
                  height: 130,
                ),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Complaint Title',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Add Descriptions',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
              ],
            ),
          );
        });
  }

  _openAddmainatanaceBottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)));
          return Container(
            height: 450,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset("lib/images/024.png"),
                  height: 130,
                ),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Set Maintanance',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Add Descriptions',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
              ],
            ),
          );
        });
  }

  _openAddnoticeBottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)));
          return Container(
            height: 450,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset("lib/images/026.png"),
                  height: 130,
                ),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Notice Title',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Add Notice',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
              ],
            ),
          );
        });
  }

  _openAddeventsBottomsheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          shape:
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)));
          return Container(
            height: 450,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset("lib/images/022.png"),
                  height: 130,
                ),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Upcoming Events',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Events Meeting',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Events Fund',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
        ),
        Container(
          height: 250,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color.fromARGB(124, 27, 87, 199),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: Size.height * 0.22,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "lib/images/013.png",
                ),
                fit: BoxFit.cover,
              )),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Members",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ]),
        ),
        Positioned(
            top: 280,
            left: 10,
            child: GestureDetector(
              onTap: () {
                _openAddnoticeBottomsheet();
              },
              child: Container(
                height: 170,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/images/026.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )),
        Positioned(
            top: 280,
            right: 10,
            child: GestureDetector(
              onTap: () {
                _openAddeventsBottomsheet();
              },
              child: Container(
                height: 170,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/images/022.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )),
        Positioned(
          top: 490,
          left: 10,
          child: GestureDetector(
            onTap: () {
              _openAddmainatanaceBottomsheet();
            },
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "lib/images/024.png",
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
            top: 490,
            right: 10,
            child: GestureDetector(
              onTap: () {
                _openAddcomplaintBottomsheet();
              },
              child: Container(
                height: 170,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/images/025.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _openAddMemberBottomsheet();
        },
        label: Text("View Member"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}