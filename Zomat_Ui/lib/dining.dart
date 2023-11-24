import 'package:flutter/material.dart';


class dining extends StatefulWidget {
  const dining({super.key});

  @override
  State<dining> createState() => _diningState();
}

var image = [
  'IMG_5537.jpg',
  'IMG_5538.jpg',
];

var image_2 = [
  'IMG_5541.jpg',
  'IMG_5542.jpg',
  'IMG_5543.jpg',
  'IMG_5544.jpg',
  'IMG_5545.jpg',
];

var text = [
  'Filters ▽',
  'Delights',
  'Book Table',
  'Nearest',
  'Rating 4.0+',
  'Pure Veg',
  'Outdoor Seating',
  'Fine Dining'
];
  
class _diningState extends State<dining> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          Container(
            height: size.height * 0.37,
            width: size.width * 1,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
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
                            color: Colors.white,
                          ),
                          Text(
                            "C.G Road ⌄",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
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
                          color: Colors.white,
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
                      color: Color.fromARGB(255, 59, 56, 56),
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.search, size: 25, color: Colors.red),
                      border: InputBorder.none,
                      hintText: 'search  "cuisines"',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.all(15),
                      suffixIcon: Icon(Icons.mic_rounded, color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.5,
                ),
                Container(
                    height: size.height * 0.17,
                    width: double.maxFinite,
                    color: Colors.transparent,
                    child: Center(
                      child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.5, top: 10),
                              child: Container(
                                height: size.height * 0.14,
                                width: size.width * 0.43,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "lib/image/${image[index]}",
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ]);
                        }),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
                  height: 5,
                ),
          Container(
            height: size.height * 0.06,
            width: double.maxFinite,
            color: Colors.transparent,
            child: Center(
                child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          child: Center(
                              child: Text(
                            "${text[index]}",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          height: size.height * 0.05,
                          width: size.width * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border:
                                  Border.all(color: Colors.grey, width: 0.5)),
                        ))
                  ],
                );
              },
            )),
          ),
          SizedBox(
                  height: 3,
                ),
                Container(
            height: size.height * 0.28,
            width: size.width * 0.94,
            
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("lib/image/IMG_5539.jpg"),
                        fit: BoxFit.cover,
                      )),
            ),
            SizedBox(
                  height: 13,
                ),
                Center(
                  child: Text("━━━━━━━━━━  IT'S TIME TO GO OUT  ━━━━━━━━━━",
                      style:
                          TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
            height: size.height * 0.15,
            width: size.width * 0.90,
            
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("lib/image/IMG_5540.jpg"),
                        fit: BoxFit.cover,
                      )),
            ),
            SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text("━━━━━━━━━━  IN THE SPOTLIGHT  ━━━━━━━━━━",
                      style:
                          TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
                ),
                SizedBox(
                  height: 25,
                )
                
                
            
        ]))));
  }
}
