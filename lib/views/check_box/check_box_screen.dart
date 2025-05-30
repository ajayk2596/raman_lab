import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  Map<String, bool> selected = {
    "Flutter": false,
    "Dart": false,
    "Firebase": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: selected.entries.map((entry) {
            return CheckboxListTile(
              title: Text(entry.key),
              value: entry.value,
              onChanged: (bool? value) {
                setState(() {
                  selected[entry.key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
