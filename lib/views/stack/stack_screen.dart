import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
            ),
            Container(
              width: 280,
              height: 280,
              color: Colors.red,
            ),
            Positioned(
              top: -30,
                child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ))
          ],
        ),
      )
      
    );
  }
}
