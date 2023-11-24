import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

var image = [
  'IMG_5553.jpg',
];
var text = [
  'Claim a Gift Card',
  'Zomato Credits',
  'Purchase History',
];
var text2 = ['Claim a Gift Card', 'Balance: ₹1000', ""];

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.30,
                width: size.width * 1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/image/IMG_5556.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
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
                                fontWeight: FontWeight.bold,
                              ),
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
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
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
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Text("━━━━━━━━━━━━━━  GIFT CARDS  ━━━━━━━━━━━━━━",
                    style: TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: size.height * 0.32,
                width: size.width * 0.90,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("lib/image/IMG_5553.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: size.height * 0.28,
                width: size.width * 0.90,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          title: Text("${text[index]}"),
                          subtitle: Text("${text2[index]}"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          iconColor: Colors.black,
                        );
                      })),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("━━━━━━━━━━━━━━  UPI  ━━━━━━━━━━━━━━",
                    style: TextStyle(color: Color.fromARGB(255, 100, 98, 98))),
              ),
              SizedBox(
                height: 20,
              ),
             Container(
                height: size.height * 0.25,
                width: size.width * 0.90,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("lib/image/IMG_5555.jpg"),
                      fit: BoxFit.cover,
                    )),
              ), 
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
