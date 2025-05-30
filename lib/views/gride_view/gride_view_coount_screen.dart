import 'package:flutter/material.dart';
import '../../controller/list_view/list_view_data_controller.dart';


class GridViewCountScreen extends StatelessWidget {
  final ListViewDataController controller = ListViewDataController();

  GridViewCountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Grid - count")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
        children: controller.list.map((user) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.yellow.shade50,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(user.image),
                ),
                SizedBox(height: 10),
                Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(user.email, style: TextStyle(color: Colors.grey)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
