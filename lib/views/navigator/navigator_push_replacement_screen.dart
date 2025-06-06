import 'package:flutter/material.dart';

class NavigatorPushReplacementScreen extends StatefulWidget {
  const NavigatorPushReplacementScreen({super.key});

  @override
  State<NavigatorPushReplacementScreen> createState() => _NavigatorPushScreenState();
}

class _NavigatorPushScreenState extends State<NavigatorPushReplacementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Navigator push replacement Screen")
          ],
        ),
      ),
    );
  }
}
