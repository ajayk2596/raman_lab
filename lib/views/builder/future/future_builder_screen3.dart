import 'package:flutter/material.dart';

class FutureBuilderScreen3 extends StatelessWidget {
  const FutureBuilderScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomSheet: Stack(
      clipBehavior: Clip.none,
      children: [
        // Bottom container (acts like nav bar)
        Container(
          height: 60,
          color: Colors.grey[200],
          alignment: Alignment.center,
          child: Text("This is a custom bottom bar"),
        ),

        // 👇 Floating Text above bottom bar
        Positioned(
          top: -25,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Total: ₹100",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Future Builder"),
           SizedBox(height: 100,),
           FutureBuilder(future: fetchNames(), builder: (c,s){
             if(s.connectionState==ConnectionState.waiting){
               return CircularProgressIndicator();
             }
             else if(s.hasError){
               return Text("Errors:${s.error}");
             }
             else if(s.hasData){
               var d=s.data!;
               return ListView.builder(
                 shrinkWrap: true,
                 itemCount: d.length,
                   itemBuilder:(c,index){
                   return Card(
                     color: Colors.yellow,
                     child: ListTile(
                       leading: CircleAvatar(
                         child: Text(d[index][0]),
                       ),
                       title: Text(d[index]),
                     ),
                   );
                   } );
             }
             else {
              return Text("No Data Found");
             }
           })

          ],
        ),
      ),
    );
  }
}

Future<List<String>> fetchNames()async{
  await Future.delayed(Duration(seconds: 2));
  return ["Raman","Aju Bhai", "Ajay"];
}
