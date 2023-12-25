import 'dart:ffi';

import 'package:demo/food/product.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(Icons.menu),
            ),
            Container(
              child: Icon(Icons.person),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Choose the",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Food you Love",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search For Food", border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Row(
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/Images/burger.png"),
                          fit: BoxFit.cover),
                           // color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                            ),SizedBox(
                              height: 10,
                            ),
                            Text("Burger")
                          ],
                        ),
                       
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/Images/6.png"),
                          fit: BoxFit.cover),
                           // color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                            ),SizedBox(
                              height: 10,
                            ),
                            Text("Pizza")
                          ],
                        ),
                       
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/Images/7.png"),
                          fit: BoxFit.cover),
                           // color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                            ),SizedBox(
                              height: 10,
                            ),
                            Text("chicken")
                          ],
                        ),
                       
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/Images/8.png"),
                          fit: BoxFit.cover),
                           // color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                            ),SizedBox(
                              height: 10,
                            ),
                            Text("Dessert")
                          ],
                        ),
                       
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Row(
              children: [
                Text(
                  "Burger",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:Card(elevation: 5,
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/Images/9.png"),
                            fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(elevation: 5,
                        child: Container(
                          height:150 ,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/Images/9.png"),
                            fit: BoxFit.cover),
                              
                              borderRadius: BorderRadius.circular(10),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        InkWell(
          child: Container(
            child: Text("click",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          )),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Prodctdetails()));
          },
        )
      ]),
    ));
  }
}