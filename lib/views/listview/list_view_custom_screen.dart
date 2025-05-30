import 'package:flutter/material.dart';
import 'package:raman_lab/controller/list_view/list_view_data_controller.dart';

class ListViewCustomScreen extends StatelessWidget {
  const ListViewCustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listViewDataController = ListViewDataController();

    return Scaffold(
      appBar: AppBar(title: const Text("Custom ListView")),
      body: ListView.custom(
        padding: const EdgeInsets.all(10),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            final data = listViewDataController.list[index];

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
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
                        Text("Name: ${data.name}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
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
          childCount: listViewDataController.list.length,
        ),
      ),
    );
  }
}
