
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
            Text("Raman",style: TextStyle(fontSize: 30),),
Image.asset("assets/images/budh.jpg",width: 300,height: 200,fit: BoxFit.contain,),
     Image.network("https://tds-images.thedailystar.net/sites/default/files/styles/very_big_1/public/images/2025/05/16/buddha_reimagined_2.png",width: 300,)  ,

ListView(physics: NeverScrollableScrollPhysics(), // disables inner scroll
  shrinkWrap: true,
  scrollDirection: Axis.horizontal,
  children: [
    ListTile(title: Text("Raman"),),
    ListTile(title: Text("Raman")),
    ListTile(title: Text("Raman")),
    ListTile(title: Text("Raman")),
    ListTile(title: Text("Raman")),
    ListTile(title: Text("Raman")),
  ],
)

          ]),
        ),
      ),
    ),
  );
  }

}