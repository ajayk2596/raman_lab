import 'package:flutter/material.dart';

class TabBarViewScreen extends StatelessWidget {
  const TabBarViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(text: 'Home', icon: Icon(Icons.home)),
          Tab(text: 'Search', icon: Icon(Icons.search)),
          Tab(text: 'Profile', icon: Icon(Icons.person)),
        ]),
      ),
      body:TabBarView(children: [
        Center(child: Container(
          color: Colors.red,
          child: Text('Home Screen'),
        )),
        Center(child: Text('Search Screen')),
        Center(child: Text('Profile Screen')),
      ])
    ));
  }
}
