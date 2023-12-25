// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:demo/food2/order.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        color: const Color.fromARGB(255, 229, 223, 223),
        child: Column(
          children: [
            const SizedBox(
            height: 30,
          ),

            Container(
          width: MediaQuery.sizeOf(context).width,
          margin: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               InkWell(
                onTap: (){
              // setState(() {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (builder)=> const back()));
              // });
             },

            child: Container(
              width: 40,
              height: 40,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),         
              child: const Icon(Icons.arrow_back),
            ),
          ),
           InkWell( 
             onTap: (){
              // setState(() {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (builder)=> const back()));
              // });
             },

            child: Container(
               width: 40,
              height: 40,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
               ),
              child: const Icon(Icons.search),
            ),
          ),
      
            ],
          ),
          
         ),

         const SizedBox(height: 20,),
////////////

         Container(
          // width: ,
          margin: const EdgeInsets.only(left:25,right: 30),
          // height: 150,
          // color: Colors.amber,
          
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [

              SizedBox(
                // color: Colors.white,
                width: MediaQuery.sizeOf(context).width/1.7,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      alignment: Alignment.topLeft,
                      //  margin: EdgeInsets.only(right: 120),
                      child: const Text("Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ),

                    const SizedBox(height: 10,),

                    Container(
                      // color: Colors.amber,
                      // alignment: Alignment.topLeft,
                      // margin: EdgeInsets.only(right: 85),
                      // width: 200,
                      margin: const EdgeInsets.only(right:55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 164, 164, 156),
                          ),
                          child: const Text("20-30min",style: TextStyle(color: Colors.white),),
                        ),
                        const Text("2.4km",style: TextStyle(color: Color.fromARGB(255, 164, 164, 156),),),
                        const Text("Restaurant",style:TextStyle(color: Color.fromARGB(255, 164, 164, 156),) ,),
                      ],
                    ),),

                    const SizedBox(height: 15,),

                    Container(
                      alignment: Alignment.bottomLeft,
                      // margin: EdgeInsets.only(right: 80),
                      child: const Text("Orange Sandwiches is delicious",style: TextStyle(fontSize: 15),),
                    ),

                  ]
                  ),
                  ),

                  
                  Container(
                    // color: Color.fromARGB(255, 164, 164, 156),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left:10,bottom:30),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white),
                              child: Image.network("https://img.freepik.com/premium-vector/letter-r-logo-design-logo-template-creative-r-logo-vector-symbol_487414-3674.jpg?w=740"),
                          ),

                          const SizedBox(height: 25,),

                          Container(child: const Row(
                            children: [
                              Icon(Icons.star_outline,color: Colors.amber,),
                              Text("4.7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),),
                        ],
                      ),
                  ),
              
            ],
          ),

         ),
/////////////////////////
         const SizedBox(
          height: 30,
         ),

         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: SizedBox(
            height: 40,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                const SizedBox(width: 20,),

                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text("Recommanded",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),)),
                  ),
                ),

                const SizedBox(width: 20,),
         
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text("Popular",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),

                const SizedBox(width: 20,),
         
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text("Noodles",style: TextStyle(fontWeight: FontWeight.bold,),)),
                  ),
                ),

                const SizedBox(width: 20,),
         
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),

                 const SizedBox(width: 20,),

                 InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),

                const SizedBox(width: 20,),
         
              ],
            ),
           ),
         ),
/////////////////////
          const SizedBox(
            height: 40,
          ),

          Card(
            margin: const EdgeInsets.only(left: 25,right: 25),
            elevation: 10,
            
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(                   
                    children: [
                      const SizedBox(width: 2,),

                  Container(
                    child: Image.network(
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo="
                      ),
                  ),
                  
                  

                  Container(  
                    
                    child: const Column(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Text("Soba Soup",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Text("No.1 in sales",style: TextStyle(color: Colors.amber),),

                      Text("₹150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  ),

                  ],
                  ),

                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>const OrderPage()));
                        }, icon: const Icon(Icons.slideshow)),
                      ),

                ],
              ),
            ),
          ),

            const SizedBox(
            height: 20,
          ),
///////////////////////
           Card(
            margin: const EdgeInsets.only(left: 25,right: 25),
            elevation: 10,
            
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(                   
                    children: [
                      const SizedBox(width: 2,),

                  Container(
                    child: Image.network(
                      "https://media.istockphoto.com/id/913034864/photo/fish-dish-grilled-salmon-and-asparagus.jpg?s=612x612&w=0&k=20&c=f0NLE67qkpMXf_wa3kPY3QKs-xxEDI4YNqPu72qdGeU="
                      ),
                  ),
                  
                  // SizedBox(width: 5,),

                  Container(  
                    
                    child: const Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Text("Soba Pasta 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Text("No.1 in sales",style: TextStyle(color: Colors.amber),),

                      Text("₹150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  ),

                  ],
                  ),

                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>const OrderPage()));
                        }, icon: const Icon(Icons.slideshow)),
                      ),

                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
//////////////////////////
           Card(
            margin: const EdgeInsets.only(left: 25,right: 25),
            elevation: 10,
            
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(                   
                    children: [
                      const SizedBox(width: 2,),

                  Container(
                    child: Image.network(
                      "https://media.istockphoto.com/id/1155681995/photo/spaghetti-pasta-with-meatballs.jpg?s=612x612&w=0&k=20&c=irfNrv5UMs85QZ4z2lmiDOg57u_eDoiZ8WqgLLamzog="
                      ),
                  ),
                  
                  // SizedBox(width: 5,),

                  Container(  
                    
                    child: const Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Text("Soba Samun 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Text("No.1 in sales",style: TextStyle(color: Colors.amber),),

                      Text("₹150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  ),

                  ],
                  ),

                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>const OrderPage()));
                        }, icon: const Icon(Icons.slideshow)),
                      ),

                ],
              ),
            ),
          ),
          const SizedBox(
            height: 65,
          ),
/////////////////////////   
          Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              elevation: 10,
              backgroundColor: Colors.amber,
            onPressed: (){
               Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>const OrderPage()));
            },
            child: const Icon(Icons.shopify_outlined,color: Colors.black,),
            ),
          ),


        ]
        ),
      ),
    );
  }
}