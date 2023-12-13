import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
  Size get preferredSize => Size.fromHeight(100);
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                // Functionality for the icon on the opposite side
              },
            ),
          ],
          title: Center(
            child: Text(
              'Our Menu',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white70,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100), // Adjust the preferred size
            child: Column(
              children: [
                TabBar(
                  indicatorWeight: 5,
                  indicatorColor:
                      Colors.deepOrange, // Adjust the indicator thickness
                  indicatorPadding: EdgeInsets.symmetric(
                      horizontal: 12), // Adjust indicator padding
                  labelPadding: EdgeInsets.symmetric(
                      vertical: 3), // Adjust tab label padding
                  tabs: [
                    Tab(
                        child: Text('Meals',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                    Tab(
                        child: Text('Sides',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                    Tab(
                        child: Text('Snacks',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ), // Adjust the desired height between AppBar and TabBar
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("lib/images/005.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Spicy Noodles\n      N1,500"),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("lib/images/017.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Shrimp Pasta\n      N1,800"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("lib/images/004.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Vegetable Curry\n      N1,200"),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("lib/images/002.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Mixed Salad\n      N1,500"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("lib/images/019.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Pasta salad\n      N1,200"),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("lib/images/018.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Smoked Pasta\n      N1,500"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(child: Text('Tab 2 Content')),
            Center(child: Text('Tab 3 Content')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.orange,


          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_rounded,
                  color: Colors.deepOrange,
                ),
                label: 'Live chat',
                backgroundColor: Colors.white70),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: 'Profile',
                backgroundColor: Colors.white70),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'Home',
                backgroundColor: Colors.white70),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant_menu,
                  color: Colors.grey,
                ),
                label: 'Menu',
                backgroundColor: Colors.deepOrange),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                label: 'Favourites',
                backgroundColor: Colors.white70)
          ],
          
        ),
      
      ),
    );
  }
}
