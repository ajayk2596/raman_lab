import 'package:flutter/material.dart';
import 'package:raman_lab/controller/list_view/list_view_data_controller.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listViewDataController = ListViewDataController();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(
        itemCount: listViewDataController.list.length,
        itemBuilder: (context, index) {
          var data = listViewDataController.list[index];
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(data.image),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${data.name}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text("Email: ${data.email}"),
                      Text("Age: ${data.age}"),
                      Text("Address: ${data.address}"),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
