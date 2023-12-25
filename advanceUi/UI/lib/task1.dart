

import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "My Famaily",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Text("Home",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    child: Icon(
                      Icons.sms,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff453657),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Calender",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "March,Wendesday",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "3 Events",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff453657),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.local_grocery_store,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Groceries",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Bocali,Apple",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "4 Items",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff453657),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Locations",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Lucy mao going to office",
                          style: TextStyle(color: Colors.white,fontSize: 10),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff453657),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.festival_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Activity",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Rose favirited your post",
                          style: TextStyle(color: Colors.white,fontSize: 12),
                        ),
                        
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff453657),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.checklist,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          "To do",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Homework, Design",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "4 Items",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff453657),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "2 items",
                          style: TextStyle(color: Colors.white),
                        ),
                        
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      backgroundColor: Color(0xff392950),
    ));
  }
}
