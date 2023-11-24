import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessageCard({Key? key,required this.date,required this.message}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45, 
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Stack(
            children: [
              Padding(padding: const EdgeInsets.only(
                left: 10,
                right: 30,
                top: 5,
                bottom: 20,
              ),
              child: Text(message,
              style: const TextStyle(fontSize: 16),),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(date,style: TextStyle(fontSize: 13,color: Colors.white60),
                    )
                  ],
                ),
                )
            ],
          ),
        ),
        ),
    );
  }
}