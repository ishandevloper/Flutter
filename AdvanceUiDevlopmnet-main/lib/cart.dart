// import 'package:flutter/material.dart';

// class Cart extends StatefulWidget {
//   const Cart({super.key});

//   @override
//   State<Cart> createState() => _CartState();
//   Size get preferredSize => Size.fromHeight(100);
// }

// class _CartState extends State<Cart> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 3,
//         child: Scaffold(
//             appBar: AppBar(
//               leading: IconButton(
//                   onPressed: () {},
//                   icon: Padding(
//                     padding: EdgeInsets.only(top: 25),
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: Colors.black,
//                     ),
//                   )),
//               actions: [
//                 IconButton(
//                   icon: Padding(
//                     padding: EdgeInsets.only(top: 25),
//                     child: Icon(
//                       Icons.shopping_cart_outlined,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onPressed: () {
//                     // Functionality for the icon on the opposite side
//                   },
//                 ),
//               ],
//               backgroundColor: Colors.white70,
//               bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(30), // Adjust the preferred size
//                 child: Column(),
//               ),
//             ),
//             body: SingleChildScrollView(
//                 child: Column(children: [
//               Container(
//                 height: 200,
//                 width: double.maxFinite,
//                 decoration: BoxDecoration(
//                     color: Colors.white70,
//                     image: DecorationImage(
//                       image: AssetImage("lib/images/029.jpg"),
//                       fit: BoxFit.fitHeight,
//                     )),
//               ),
//               // Set the background color of the container

//               Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Jollof Rice', // Your text here
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black, // Set the text color
//                         fontSize: 20.0, // Set the text size
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Text(
//                       '⭐⭐⭐⭐⭐ (50 Ratings)', // Your text here
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black, // Set the text color
//                         fontSize: 12.0, // Set the text size
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           'N1,200', // Your text here
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black, // Set the text color
//                             fontSize: 20.0, // Set the text size
//                           ),
//                         ),
//                         SizedBox(
//                           width: 200,
//                         ),
//                         Container(
//                           decoration:
//                               BoxDecoration(border: BorderRadius.circular(20)),
//                           color: Colors.deepOrange,
//                           height: 35,
//                           width: 100,
//                           child: Center(
//                             child: Text(
//                               '-   1   +', // Your text here
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white, // Set the text color
//                                 fontSize: 22.0, // Set the text size
//                               ),
//                             ),
//                           ),
//                         ),
//                       ]))
//               // Adjust the desired height between AppBar and TabBar
//             ]))));
//   }
// }

import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key});

  @override
  State<Cart> createState() => _CartState();
  Size get preferredSize => Size.fromHeight(100);
}

class _CartState extends State<Cart> {
  int _quantity = 1; // Initialize quantity to 1

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: IconButton(
          onPressed: () {
            // Handle back button press
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle shopping cart button press
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30), // Adjust the preferred size
          child: Column(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white70,
                image: DecorationImage(
                  image: AssetImage("lib/images/029.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Jollof Rice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '⭐⭐⭐⭐⭐ (50 Ratings)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'N1,200',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Container(
                    color: Colors.deepOrange,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent, // Background color
                          ),
                          child: IconButton(
                            onPressed: _decrementQuantity,
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                        Text(
                          '$_quantity',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30.0,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrange, // Background color
                          ),
                          child: IconButton(
                            onPressed: _incrementQuantity,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ]))
              ],
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ''' Biryani Rice is basically a spiced rice, that is,basmati 
 rice cooked with choicest of spices and finished with
 some fried onions,nuts and fresh herbs.However,
 there are many variations of this biryani chawal recipe.''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                        ])),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: double.maxFinite,
                              color: Colors.grey,
                            )
                          ],
                        )
              ],
            ),
          ],
        ),
      ),
    );
  }
}