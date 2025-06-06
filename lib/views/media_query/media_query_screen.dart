import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s=MediaQuery.of(context).size;
    if(s.width>=500){
     return Scaffold(
       backgroundColor: Colors.red,
     );
    }
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text("Ajay"),
      ),
    );
  }
}
