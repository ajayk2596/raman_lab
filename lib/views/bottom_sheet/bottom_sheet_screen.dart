import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              child: const Text("Open Sheet"),
            ),
            
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Aj"
                  "ay"),
            ),

          ],
        )
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // allows full height
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets, // handles keyboard overlap
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // wrap content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Login Screen", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the sheet
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
