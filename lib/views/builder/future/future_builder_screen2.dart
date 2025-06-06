import 'package:flutter/material.dart';

class FutureBuilderScreen2 extends StatelessWidget {
  const FutureBuilderScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Future Builder"),
            FutureBuilder(future: fetchName(), builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.waiting){
                return CircularProgressIndicator();
              }
              else if(snapshot.hasError){
                return Text("errors:${snapshot.error}");
              }
              else if(snapshot.hasData){
                return Text(snapshot.data.toString());
              }
              else{
               return Text("Data no found");
              }
            })
          ],
        ),
      ),
    );
  }
}
Future<String> fetchName()async{
  await Future.delayed(Duration(seconds: 3));
  return "Raman";
}
