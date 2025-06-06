import 'package:flutter/material.dart';

class NavigatorPopScreen extends StatefulWidget {
  const NavigatorPopScreen({super.key});

  @override
  State<NavigatorPopScreen> createState() => _NavigatorPushScreenState();
}

class _NavigatorPushScreenState extends State<NavigatorPopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Navigator Pop Screen"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("next"))
          ],
        ),
      ),
    );
  }
}
