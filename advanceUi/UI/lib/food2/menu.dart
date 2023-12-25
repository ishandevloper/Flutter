// ignore_for_file: camel_case_types

import 'package:demo/food2/first.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Menu",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    IconButton(onPressed: (){},
                     icon: const Icon(Icons.search,color: Colors.black26,size: 30,)),
                     IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>first()));
                     },
                     icon: const Icon(Icons.filter_alt_outlined,size: 30,))
                  ],
                )
              ],
            ),
          ),
////////////////////
          DefaultTabController(length: 4, 
          child:Column(
            children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(150, 237, 236, 237),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TabBar(
                      
                      // padding: EdgeInsets.all(10),
                        indicator: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: "Kinza",
                          ),
                          Tab(
                            text: "Maman",
                          ),
                          Tab(
                            text: "Tanuki",
                          ),
                          Tab(
                            text: "Gastrob",
                          ),

                        ]),
                  ),
            ],
          ) ),
///////////////////////     
           DefaultTabController(length: 8, 
          child:Column(
            children: [
                  Container(
                    margin: const EdgeInsets.only(left: 0, right: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black26,
                        labelPadding: const EdgeInsets.only(left: 0),
                        tabs: const [
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "Salad",
                          ),
                          Tab(
                            text: "Pizza",
                          ),
                          Tab(
                            text: "Asian",
                          ),
                          Tab(
                            text: "Burger",
                          ),
                          Tab(
                            text: "Dessert",
                          ),
                          Tab(
                            text: "Tanuki",
                          ),
                          Tab(
                            text: "Gastrob",
                          ),

                        ]),
                  ),
            ],
          ) ),     
          
          
///////////////////
       const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width/2.5,
                // color: Colors.red,
                child: Column(
                  children: [
                      SizedBox(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=600",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              const SizedBox(height: 10,),
                          const Text("Vegatable And \n Poached Egg",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,),
                              Text("(15)",style: TextStyle(fontSize: 17),)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("\$13.50",),
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: const Icon(Icons.add_box_rounded,color: Colors.amber,))
                            ],
                          )
                        ],
                ),
              ),

             SizedBox(
                width: MediaQuery.sizeOf(context).width/2.5,
                // color: Colors.red,
                child: Column(
                  children: [
                      SizedBox(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  "https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=600",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              const SizedBox(height: 10,),
                          const Text("Vegatable And \n Poached Egg",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,),
                              Text("(15)",style: TextStyle(fontSize: 17),)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("\$13.50",),
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: const Icon(Icons.add_box_rounded,color: Colors.amber,))
                            ],
                          )
                        ],
                ),
              ),
              ],
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          Container(
            margin: const EdgeInsets.only(left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width/2.5,
                // color: Colors.red,
                child: Column(
                  children: [
                      SizedBox(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=600",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              const SizedBox(height: 10,),
                          const Text("Vegatable And \n Poached Egg",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,),
                              Text("(15)",style: TextStyle(fontSize: 17),)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("\$13.50",),
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: const Icon(Icons.add_box_rounded,color: Colors.amber,))
                            ],
                          )
                        ],
                ),
              ),

             SizedBox(
                width: MediaQuery.sizeOf(context).width/2.5,
                child: Column(
                  children: [
                      SizedBox(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  "https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=600",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              const SizedBox(height: 10,),
                          const Text("Vegatable And \n Poached Egg",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,color: Colors.amber,),
                              Icon(Icons.star,),
                              Text("(15)",style: TextStyle(fontSize: 17),)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("\$13.50",),
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: const Icon(Icons.add_box_rounded,color: Colors.amber,))
                            ],
                          )
                        ],
                ),
              ),
              ],
            ),
          ),

          



          
        ],
        ),

        bottomNavigationBar: BottomNavigationBar(

          fixedColor: Colors.yellow,
          elevation: 0,
          backgroundColor: const Color.fromARGB(31, 164, 164, 164),
          
          // onTap: (value) {
          //   setState(() {
              
          //   });
          // },

          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book,),label: "Menu"),
           BottomNavigationBarItem(icon: Icon(Icons.account_box,),label: "account"),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,),label: "Cart"),
        ]),
    );
  }
}