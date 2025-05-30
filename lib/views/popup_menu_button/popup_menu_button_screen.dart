import 'package:flutter/material.dart';

class PopupMenuButtonScreen extends StatelessWidget {
  const PopupMenuButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> names = [
      "Ajay", "Vijay", "Ravi", "Rahul", "Sneha",
      "Neha", "Ronit", "Anjali", "Karan", "Priya",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Raman"),
        actions: [
          PopupMenuButton(
            onSelected: (value){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
            },
              itemBuilder: (context){
                return names.map((value){
                  return PopupMenuItem(
                    value: value,
                      child: Text(value));
                }).toList();
              })
        ],
      ),
      body: Center(
        child: Text("PopupMenuButton Screen"),
      ),
    );
  }
}
