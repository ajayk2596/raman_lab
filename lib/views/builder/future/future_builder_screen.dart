import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Future Builder Screen"),

            FutureBuilder(
              future: fetchName(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Data Error");
                } else if (snapshot.hasData) {
                  var d=snapshot.data!;
                  return Column(
                    children: d.map((v)=>Text(v)).toList()
                  );
                } else {
                  return Text("No data found");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<List<String>> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return ["Raman", "Aju Bhai","Ajay"];
}
