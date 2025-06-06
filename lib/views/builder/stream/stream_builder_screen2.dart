import 'package:flutter/material.dart';

class StreamBuilderScreen2 extends StatelessWidget {
  const StreamBuilderScreen2({super.key});

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
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  else if(snapshot.hasError){
                    return Text("Errors:${snapshot.error}");
                  }
                  else if(snapshot.hasData){
                    var d=snapshot.data;
                    return ListView.builder(
                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: d?.length,
                        itemBuilder: (c,i){
                          return Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  child: Text(d![i][0].toString()),
                                ),
                                title: Text("name:${d[i]}"),
                              )
                            ],
                          );
                        });
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

Stream<List<String>> fetchData()async*{
  await Future.delayed(Duration(seconds: 5));
  yield ["Raman","Kumar"];
}
