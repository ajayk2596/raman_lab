import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  var selectorG="Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("result:$selectorG"),
            Radio(value: "Male", groupValue: selectorG, onChanged: (v){
              setState(() {


                selectorG=v!;
              });
            }),
            Radio(value: "Female",
                activeColor: Colors.green,
                groupValue: selectorG, onChanged: (v){
             setState(() {
               selectorG=v!;
             },);
            }),
            // RadioListTile(value: "Male", groupValue: selectorG, onChanged: (value){
            //   setState(() {
            //     selectorG=value!;
            //   });
            // }),
            // RadioListTile(value: "Female", groupValue: selectorG, onChanged: (value){
            //   setState(() {
            //     selectorG=value!;
            //   });
            // }),
            // RadioListTile(value: "Others", groupValue: selectorG, onChanged: (value){
            //   setState(() {
            //     selectorG=value!;
            //   });
            // })

          ],
        ),
      ),
    );
  }
}
