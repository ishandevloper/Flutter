import 'package:demo/food2/first.dart';
import 'package:flutter/material.dart';
// import 'package:restaurantui/Screens/restaurant.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  double count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ 
          Container(
          // height: MediaQuery.sizeOf(context).height,
          color: Colors.amber,
      
          child: Column(
            children: [
              const SizedBox(height: 20,),

              SizedBox(
                height: 140,
                child: Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const first()));
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // setState(() {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (builder) => const back()));
                          // });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//////////////////////////      
              Container(
                // height: ,
                // height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Color.fromARGB(255, 229, 223, 223),
                ),
                // margin: EdgeInsets.only(top: 100),
                // padding: EdgeInsets.only(top: 100),
                child: Column(

                  children: [
      
                     Container(
                      // color: Colors.amber,
                      width: 250,
                      // height: 200,
                      transform: Matrix4.translationValues(-10,-100, 0),
                      child:Image.asset("assets/Images/10.png") ,
                   ),
      
                    Container(
                      transform: Matrix4.translationValues(0,-30, 0),
                      // color: Colors.amber,
                      child: const Text(
                        "Sei Ua Samun Phrai",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    
                    SizedBox(
                      // color: Colors.amber,
                      width: MediaQuery.sizeOf(context).width/1.5,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("🕙50min",),
                          Text("⭐4.8"),
                          Text("🔥325 kcal")
                        ],
                      ),
                    ),
      
                    const SizedBox(height: 30,),

                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                        Container(
                          padding: const EdgeInsets.only(left: 12),
                          child: const Text("₹12",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),

                        Stack(
                          children: [Container(
                            // width: 90,
                            decoration: BoxDecoration(
                              color:Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                        
                                SizedBox(
                                  width: 30,
                                  child: TextButton(onPressed: (){
                                    setState(() {
                                      count -=1;
                                    });
                                
                                  },
                                   child: const Text("-",style: TextStyle(fontSize: 20,color: Colors.black),)),
                                ),

                                // SizedBox(width: 30,),
                                Container(
                                // padding: EdgeInsets.all,

                                    // transform: Matrix4.translationValues(0, 0, 0),
                                    margin: const EdgeInsets.only(top: 5,bottom: 5),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white
                                    ),
                                     child: Center(child: Text("$count",)),
                                ),

                                   SizedBox(
                                    width: 30,
                                     child: TextButton(onPressed: (){
                                      count += 1;
                                       },
                                      child: const Text("+",style: TextStyle(fontSize: 20,color: Colors.black),)),
                                   ),
                              
                        
                              ],
                            ),
                          ),

                            // Positioned(
                            //   left: 29,
                            //   child: Container(
                            //     // padding: EdgeInsets.all,
                            //         margin: EdgeInsets.only(top: 5,bottom: 5),
                            //         width: 30,
                            //         height: 30,
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(100),
                            //           color: Colors.white
                            //         ),
                            //         child: Center(child: Text("$count",)),
                            //        ),
                            // ),
                        
                          ]
                        )
                      ]),
                    ),

                    const SizedBox(height: 30,),
      ///////////////////////
                    Container(
                      margin: const EdgeInsets.only(left: 35),
                      alignment: Alignment.topLeft,
                      child: const Text("Ingredience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                       const SizedBox(height: 10,),
      ///////////////////////////////
                     Container(
                      width: MediaQuery.sizeOf(context).width,
                      margin: const EdgeInsets.only(left: 20,right: 30),
                      height: 100,
                      // color: Colors.amber,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
                        children: [
                          InkWell(onTap: () {
                            
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Image.network(
                                    "https://media.istockphoto.com/id/1252605665/photo/chilli-garlic-hakka-noodles-in-black-bowl-isolated-on-white-background-indo-chinese.jpg?s=612x612&w=0&k=20&c=lesS8Wt5JVauAqjVh9uPfoiGr1ZjsnjHWZyKw3zLg2E="
                                  ),
                                ),
                                const Text("Noodles"),
                              ],
                            ),
                          )
                          ),
      
                          //
                          InkWell(onTap: () {
                            
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Image.network(
                                    "https://media.istockphoto.com/id/687708648/photo/pasta-with-spinach-and-sausages.jpg?s=612x612&w=0&k=20&c=Jf_61NSt2kamgh2A-O7eLqRUfMhMjcqPJCNy6B76kAE="
                                  ),
                                ),
                                const Text("Shrimp"),
                              ],
                            ),
                          )
                          ),
                          //
                          InkWell(onTap: () {
                            
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Image.network(
                                    "https://media.istockphoto.com/id/1129075054/photo/plate-of-corn-chips-nachos-with-fried-minced-meat.jpg?s=612x612&w=0&k=20&c=tymnrBUFbQRO9vvz5LYrkcBAnEbN3UqtevAnZFK_RXQ="
                                  ),
                                ),
                                const Text("Egg"),
                              ],
                            ),
                          )
                          ),
                          //
                          InkWell(onTap: () {
                            
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Image.network(
                                    "https://media.istockphoto.com/id/1056419208/photo/grilled-chicken-breast-and-vegetables.jpg?s=612x612&w=0&k=20&c=_seZ-9HcA9Pty-OGkNsUh9dFiGhIPhCXBTKTkmFIFi8="
                                  ),
                                ),
                                const Text("Scallion"),
                              ],
                            ),
                          )
                          ),
      
                        ],
      
                      ),
                     ),
                     ///////////
                       const SizedBox(height: 30,),
      ///////////////////////
                    Container(
                      margin: const EdgeInsets.only(left: 35),
                      alignment: Alignment.topLeft,
                      child: const Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                       const SizedBox(height: 6,),
      
                       Container(
                        margin: const EdgeInsets.only(left: 35),
                        child: const Text("Food contains nutrients—substances essential for the growth, repair, and maintenance of body tissues and for the regulation of vital processes.")
                        ),

                        const SizedBox(height: 10,),
      
                       Container(
                      margin: const EdgeInsets.only(right: 20),
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        elevation: 10,
                        backgroundColor: Colors.amber,
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (builder) => OrderPage()));
                        },
                        child: const Icon(
                          Icons.shopify_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(height: 25,)
      
                  ],
                ),
              ),
      //////////////////////////////
            ],
          ),
        ),
        ///////////
          //  Positioned(
          // left: 25,
          // right: 35,
          // top: 80,
          
          // child: Container(
          //   width: 250,
          //   height: 250,
          //   child:Image.asset("assets/food.png") ,
          // )
          // ),


        ]
      ),

    );
  }
}