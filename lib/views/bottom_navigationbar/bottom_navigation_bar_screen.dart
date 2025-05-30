import 'package:flutter/material.dart';
import 'package:raman_lab/home/home_screen.dart';
import 'package:raman_lab/views/profile_screen.dart';
import 'package:raman_lab/views/search_screen.dart';

import '../home_screen.dart';
class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex=0;
  var screens=[Home(),SearchScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          onTap: (index){
          setState(() {
            currentIndex=index;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),]),
    );
  }
}
