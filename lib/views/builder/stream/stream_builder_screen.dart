import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatelessWidget {
  const StreamBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
StreamBuilder(
    stream: fetchData(),
    builder: (context,snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }
      else if(snapshot.hasError){
        return Text("errors:${snapshot.error}");
      }
      else if(snapshot.hasData){
        return Text("name:${snapshot.data}");
      }
      else{
        return Text("Data No Found");
      }
    })
          ],
        ),
      ),
    );
  }
}
Stream<String> fetchData()async*{
  await Future.delayed(Duration(seconds: 3));
 yield "Raman";

}
