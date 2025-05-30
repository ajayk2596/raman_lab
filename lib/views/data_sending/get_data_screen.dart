import 'package:flutter/material.dart';
class GetDataScreen extends StatelessWidget {
  String name;
   GetDataScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("name:$name",style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
