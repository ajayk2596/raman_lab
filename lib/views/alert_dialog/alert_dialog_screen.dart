import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){

          customDialog(context);
        }, child: Text("alert")),
      ),
    );
  }
}
dialog(BuildContext context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: Colors.yellow,
      title: Text("Alert"),
      content: Text("edfghjk hghuh huhuh"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("OK"),
        ),
      ],
    );
  });
}

customDialog(BuildContext context){
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.amber[100],
      title: Text("Custom Alert"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.warning, size: 40),
          SizedBox(height: 10),
          Text("This is a custom styled dialog."),
        ],
      ),
      actions: [
        TextButton(onPressed: () {}, child: Text("Close"))
      ],
    ),
  );


}