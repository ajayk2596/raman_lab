import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Ajay",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          const Icon(Icons.add),
          const Icon(Icons.add),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {

              if (value == 'edit') {

              } else if (value == 'delete') {

              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: "edit",
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 5,),
                    Text("Edit Profile"),
                  ],
                )
              ),
              PopupMenuDivider(),
              const PopupMenuItem(
                value: "delete",
                child: Row(
                  children: [
                    Icon(Icons.delete),
                    SizedBox(width: 5,),
                    Text("Delete Account"),
                  ],
                )
              ),
              PopupMenuDivider(),
              const PopupMenuItem(
                value: "logout",
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 5,),
                    Text("Logout"),
                  ],
                )
              ),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "Profile Screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
