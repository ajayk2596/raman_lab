import 'package:flutter/material.dart';
import 'package:raman_lab/controller/list_view/list_view_data_controller.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  const ListViewSeparatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listViewDataController = ListViewDataController();

    return Scaffold(
      appBar: AppBar(title: const Text("User List")),
      body: ListView.separated(
        itemCount: listViewDataController.list.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final data = listViewDataController.list[index];

          return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.yellow.shade50,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(data.image),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: ${data.name}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      const SizedBox(height: 4),
                      Text("Email: ${data.email}"),
                      Text("Age: ${data.age}"),
                      Text("Address: ${data.address}"),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 20,
          thickness: 1,
          color: Colors.grey,
        ),
      ),
    );
  }
}
