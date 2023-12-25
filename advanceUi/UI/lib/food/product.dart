import 'package:flutter/material.dart';

class Prodctdetails extends StatefulWidget {
  const Prodctdetails({super.key});

  @override
  State<Prodctdetails> createState() => _ProdctdetailsState();
}

class _ProdctdetailsState extends State<Prodctdetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/Images/burgers.png"),
                    fit: BoxFit.cover,
                    ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          child: const Icon(Icons.arrow_back),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chicken Burger",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "\$ 15.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    )
                  ]),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("4.9"),
                            Text("(50)")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: const Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            color: Colors.blue,
                          ),
                          Text("30 Min"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(
                              Icons.delivery_dining,
                              color: Colors.green,
                            ),
                            Text("Free Delivery"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: const Row(
                          children: [
                            Text("Details"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: const Row(
                        children: [
                          Text(
                            "Ingrediants",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        child: const Row(
                          children: [
                            Text("Reviews"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: const Row(
                      children: [
                        Text(
                          "Choice of top Burger",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ))
              ]),
            ]),
          ],
        ),
        bottomSheet: BottomSheet(onClosing: () {
          print("Hello");
        }, builder: (index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: const CircleAvatar(child: Text("-",style: TextStyle(color: Colors.white,fontSize:20),)),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.red

                          //   )
                          // ),
                        child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text("+",style: TextStyle(color: Colors.red,fontSize:20),)),
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2.5),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ))
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 2.5),
                  onTap: () {},
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
