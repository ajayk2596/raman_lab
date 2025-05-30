import 'package:flutter/material.dart';
import 'package:raman_lab/views/data_sending/get_data_screen.dart';
class SendDataScreen extends StatefulWidget {
  const SendDataScreen({super.key});

  @override
  State<SendDataScreen> createState() => _SendDataScreenState();
}

class _SendDataScreenState extends State<SendDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Send data"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GetDataScreen(name: "Raman")));
            }, child: Text("send"))
          ],
        ),
      ),
    );
  }
}
