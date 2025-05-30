import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Text("raman"),
           SizedBox(
             width: double.infinity,
             height: 200,
             child:  Card(
               borderOnForeground: false,
               color: Colors.yellow,
               margin: EdgeInsets.all(10),
               elevation: 2,
               clipBehavior: Clip.hardEdge,
               shadowColor: Colors.red,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20))
               ),
               child: Image.asset("assets/images/ajay.png"),
             ),
           )
          ],
        )
      ),
    );
  }
}
