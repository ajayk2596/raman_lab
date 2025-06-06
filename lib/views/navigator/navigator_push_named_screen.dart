import 'package:flutter/material.dart';

class NavigatorPushNamedScreen extends StatefulWidget {
  const NavigatorPushNamedScreen({super.key});

  @override
  State<NavigatorPushNamedScreen> createState() => _NavigatorPushScreenState();
}

class _NavigatorPushScreenState extends State<NavigatorPushNamedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Navigator NavigatorPushNamedScreen Screen")
          ],
        ),
      ),
    );
  }
}
