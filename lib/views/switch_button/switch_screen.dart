import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: isSwitched,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitched = newValue;
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.lightGreenAccent,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.orange,
            ),
            SizedBox(height: 20),
            Text(
             isSwitched ? "on" : "off",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
