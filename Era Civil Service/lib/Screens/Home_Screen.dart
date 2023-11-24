import 'package:carousel_slider/carousel_slider.dart';
import 'package:eraupsc/Screens/course_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List imageList = [1, 2, 3, 4, 5];

var currentIndex = 0;

final CarouselController carouselController = CarouselController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    //  print(size.height);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              myslider(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Exam Materials",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.15,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // To space the cards evenly
                  children: <Widget>[
                    // Card 1 - Test
                    Container(
                      height: size.height * 0.13,
                      width: size.width * 0.3,
                      child: Card(
                        color: Colors.blue[400],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

                    // Card 2 - MCQ
                    Container(
                      height: size.height * 0.13,
                      width: size.width * 0.3,
                      child: Card(
                        color: Colors.red[200],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Container(
                      height: size.height * 0.13,
                      width: size.width * 0.3,
                      child: Card(
                        color: Colors.purple[200],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                height: size.height * 0.07,
                                width: size.width * 0.2,
                                child: Image.asset('assets/material.png')),
                            Text("Materials", style: TextStyle(fontSize: 17))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                child: Container(
                  // padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(Colors.purple[100]!, 'Student \n Enrolled',
                          isMobile, '29.3k', Colors.purple[900]!),
                      buildContainer(Colors.amber[100!]!, 'Class \n Completed',
                          isMobile, '32.4k', Colors.amber),
                      buildContainer(Colors.red[100]!, 'Satisfaction \n Rate',
                          isMobile, '100%', Colors.red),
                      buildContainer(Colors.green[100]!, 'Top \n Instructors',
                          isMobile, '354+', Colors.green),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/Banner.jpeg',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 210,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 160,
                      child: TextButton(
                          //explore courses
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                return CorseScreen();
                              },
                            ));
                          },
                          child: Text(
                            "Explore Courses",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                    ),
                  ),
                 
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(
      Color color, String text, bool isMobile, String data, Color textcolor) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      width: isMobile ? 90 : 200, // Adjust the width based on the screen size
      height:
          isMobile ? 100 : 150, // Adjust the height based on the screen size

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data,
            style: GoogleFonts.dmSans(
                fontSize: 25, fontWeight: FontWeight.w800, color: textcolor),
          ),
          FittedBox(
            child: Text(
              text,
              style:
                  GoogleFonts.dmSans(fontSize: 15, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget myslider() {
    return Stack(
      children: [
        Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 20),
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[600],
                              borderRadius: BorderRadius.circular(40)),
                          child: Image.asset(
                            'assets/logo.png',
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: currentIndex == entry.key ? 17 : 7,
                  height: 7.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 3.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                          ? Colors.yellow[700]
                          : Colors.brown),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}