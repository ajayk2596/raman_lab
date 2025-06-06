import 'package:flutter/material.dart';
import 'package:raman_lab/views/navigator/navigator_pop_screen.dart';

class NavigatorPushScreen extends StatefulWidget {
  const NavigatorPushScreen({super.key});

  @override
  State<NavigatorPushScreen> createState() => _NavigatorPushScreenState();
}

class _NavigatorPushScreenState extends State<NavigatorPushScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Navigator Push Screen"),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/profile');
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return NavigatorPopScreen();
              // },));
            }, child: Text("next"))
          ],
        ),
      ),
    );
  }
}
