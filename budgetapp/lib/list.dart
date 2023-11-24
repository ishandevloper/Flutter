import "package:flutter/material.dart";
class ListComp extends StatelessWidget {
  final String title;
  final String amount;
  const ListComp({super.key,required this.title,required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(title),
        subtitle: Text(amount),
      )
    );
  }
}