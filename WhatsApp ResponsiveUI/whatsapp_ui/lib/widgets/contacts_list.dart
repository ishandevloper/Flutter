import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';
import 'package:whatsapp_ui/widgets/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: 
      ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return  Column(
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    trailing: Text(info[index]['time'].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),),
                
                    title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18),),
                    subtitle: Text(info[index]['message'].toString(),style: TextStyle(fontSize:15),
                    ),
                  ),
                ),
              ),
              const Divider(color: dividerColor,indent: 85,),
            ],
          );
        },),   
    );
  }
}