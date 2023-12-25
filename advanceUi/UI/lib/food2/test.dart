// // ignore_for_file: camel_case_types, avoid_unnecessary_containers

// import 'package:flutter/material.dart';
// import 'package:no_60/back.dart';

// class order extends StatefulWidget {
//   const order({super.key});

//   @override
//   State<order> createState() => _orderState();
// }

// class _orderState extends State<order> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//               color: Colors.amber,

//               height:MediaQuery.sizeOf(context).height/5,
//               child: Container(
//                 margin: const EdgeInsets.all(20),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (builder) => const back()));
//                         });
//                       },
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(100),
//                           color: Colors.white,
//                         ),
//                         child: const Icon(Icons.arrow_back),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (builder) => const back()));
//                         });
//                       },
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(100),
//                           color: Colors.white,
//                         ),
//                         child: const Icon(Icons.favorite_border_outlined),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

// //////////////
//             Container(
//               // height: MediaQuery.sizeOf(context).height/1.3,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50)),
//                 color: Color.fromARGB(255, 229, 223, 223),
//               ),
//               // margin: EdgeInsets.only(top: 100),
//               // padding: EdgeInsets.only(top: 100),
//               child: Column(
//                 children: [

//                   const SizedBox(height: 100,),

//                   const Text(
//                     "Sei Ua Samun Phrai",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
                  
//                   const SizedBox(
//                     height: 25,
//                   ),
                  
//                   Container(
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Text("🕙50min",),
//                         Text("⭐4.8"),
//                         Text("🔥325 kcal")
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 130,),
// ///////////////////////
//                   Container(
//                     margin: const EdgeInsets.only(left: 35),
//                     alignment: Alignment.topLeft,
//                     child: const Text("Ingredience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
//                     ),
//                      const SizedBox(height: 10,),
// ///////////////////////////////
//                    Container(
//                     width: MediaQuery.sizeOf(context).width,
//                     margin: const EdgeInsets.only(left: 20,right: 30),
//                     height: 100,
//                     // color: Colors.amber,
//                     child: Row(
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//                       children: [
//                         InkWell(onTap: () {
                          
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           color: Colors.white,
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               SizedBox(
//                                 height: 40,
//                                 child: Image.network(
//                                   "https://media.istockphoto.com/id/1252605665/photo/chilli-garlic-hakka-noodles-in-black-bowl-isolated-on-white-background-indo-chinese.jpg?s=612x612&w=0&k=20&c=lesS8Wt5JVauAqjVh9uPfoiGr1ZjsnjHWZyKw3zLg2E="
//                                 ),
//                               ),
//                               const Text("Noodles"),
//                             ],
//                           ),
//                         )
//                         ),

//                         //
//                         InkWell(onTap: () {
                          
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           color: Colors.white,
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               SizedBox(
//                                 height: 40,
//                                 child: Image.network(
//                                   "https://media.istockphoto.com/id/687708648/photo/pasta-with-spinach-and-sausages.jpg?s=612x612&w=0&k=20&c=Jf_61NSt2kamgh2A-O7eLqRUfMhMjcqPJCNy6B76kAE="
//                                 ),
//                               ),
//                               const Text("Shrimp"),
//                             ],
//                           ),
//                         )
//                         ),
//                         //
//                         InkWell(onTap: () {
                          
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           color: Colors.white,
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               SizedBox(
//                                 height: 40,
//                                 child: Image.network(
//                                   "https://media.istockphoto.com/id/1129075054/photo/plate-of-corn-chips-nachos-with-fried-minced-meat.jpg?s=612x612&w=0&k=20&c=tymnrBUFbQRO9vvz5LYrkcBAnEbN3UqtevAnZFK_RXQ="
//                                 ),
//                               ),
//                               const Text("Egg"),
//                             ],
//                           ),
//                         )
//                         ),
//                         //
//                         InkWell(onTap: () {
                          
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           color: Colors.white,
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               SizedBox(
//                                 height: 40,
//                                 child: Image.network(
//                                   "https://media.istockphoto.com/id/1056419208/photo/grilled-chicken-breast-and-vegetables.jpg?s=612x612&w=0&k=20&c=_seZ-9HcA9Pty-OGkNsUh9dFiGhIPhCXBTKTkmFIFi8="
//                                 ),
//                               ),
//                               const Text("Scallion"),
//                             ],
//                           ),
//                         )
//                         ),

//                       ],

//                     ),
//                    ),
//                    ///////////
//                      const SizedBox(height: 30,),
// ///////////////////////
//                   Container(
//                     margin: const EdgeInsets.only(left: 35),
//                     alignment: Alignment.topLeft,
//                     child: const Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
//                     ),
//                      const SizedBox(height: 10,),

//                      Container(
//                       margin: const EdgeInsets.only(left: 35),
//                       child: const Text("Food is one of the basic necessities of life. Food contains nutrients—substances essential for the growth, repair, and maintenance of body tissues and for the regulation of vital processes. Nutrients provide the energy our bodies need to function.")
//                       ),

//                      Container(
//                     margin: const EdgeInsets.only(right: 20),
//                     alignment: Alignment.bottomRight,
//                     child: FloatingActionButton(
//                       elevation: 10,
//                       backgroundColor: Colors.amber,
//                       onPressed: () {
//                         // Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: (builder) => OrderPage()));
//                       },
//                       child: const Icon(
//                         Icons.shopify_outlined,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),

//                 ],
//               ),
//             ),

            
//             ],
//           ),
        
//         Positioned(
//           left: 30,
//           right: 30,
//           top: 100,
          
//           child: SizedBox(
//             width: 180,
//             height: 180,
//             child:Image.asset("assets/food.png") ,
//           )
//           ),
//         ],
        
//       ),
//     );
//   }
// }