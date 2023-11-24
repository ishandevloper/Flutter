import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zomato/dining.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

var image = [
  'IMG_5527.jpg',
  'IMG_5525.jpg',
  'IMG_5526.jpg',
  'IMG_5524.jpg',
  'IMG_5528.jpg',
  'IMG_5523.jpg',
  'IMG_5529.jpg',
  'IMG_5530.jpg',
  'IMG_5531.jpg',
  '12.jpg',
  '15.jpg',
  '17.jpg',
  '18.jpg',
  '19.jpg',
];

var image_2 = [
  '12.jpg',
  '13.jpg',
  '15.jpg',
  '18.jpg',
  '19.jpg',
  '20.jpg',
  '21.jpg',
  '22.jpg',
  '23.jpg',
  '17.jpg',
];

class _HomepageState extends State<Homepage> {
 
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
       
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            "C.G Road ⌄",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ahmedabad",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 100, 98, 98),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: size.height * 0.06,
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.search, size: 25, color: Colors.red),
                      border: InputBorder.none,
                      hintText: 'search  "fries and burgers"',
                      suffixIcon: Icon(Icons.mic_rounded, color: Colors.red),
                      contentPadding: EdgeInsets.all(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                    height: size.height * 0.20,
                    width: size.width * 0.95,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/image/IMG_5519.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: Text("━━━━━━━━━━  RECOMMENDED FOR YOU  ━━━━━━━━━━",
                      style:
                          TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: size.height * 0.32,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height * 0.13,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "lib/image/${image[index]}",
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              height: size.height * 0.13,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "lib/image/${image[index + 3]}"),
                                    fit: BoxFit.cover),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ]);
                    }),
                  ),
                ),
                Center(
                  child: Text("━━━━━━━━━━━━━━━  Explore  ━━━━━━━━━━━━━━━",
                      style:
                          TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
                ),
                Container(
                  height: size.height * 0.24,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height * 0.19,
                            width: size.width * 0.29,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/image/${image[index + 6]}"),
                                  fit: BoxFit.cover),
                              color: Colors.grey,
                              border:
                                  Border.all(color: Colors.grey, width: 0.10),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ]);
                    }),
                  ),
                ),
                Center(
                  child: Text("━━━━━━━━━━  WHAT'S ON YOUR MIND?  ━━━━━━━━━━",
                      style:
                          TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
                ),
                Container(
                  height: size.height * 0.36,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.29,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("lib/image/${image_2[index]}"),
                                  fit: BoxFit.cover),
                              color: Colors.grey,
                              border: Border.all(
                                  color: Colors.transparent), //width: 0.5),
                              borderRadius: BorderRadius.circular(75),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              height: size.height * 0.15,
                              width: size.width * 0.29,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "lib/image/${image_2[index + 5]}"),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                border: Border.all(
                                    color: Colors.transparent), // width: 0.5),
                                borderRadius: BorderRadius.circular(75),
                              )),
                        ),
                      ]);
                    }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
