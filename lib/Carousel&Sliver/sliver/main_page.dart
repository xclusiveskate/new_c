import 'package:flutter/material.dart';

import 'advance_sliver.dart';
import 'basic_sliver.dart';
import 'tabbar_sliver.dart';

class Slivers extends StatefulWidget {
  const Slivers({super.key});

  @override
  State<Slivers> createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  List pages = [
    const BasicSliver(),
    const AdvanceSliver(),
    const TabBarSlivers()
  ];
  int currentIndex = 0;

  tabs(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          onTap: tabs,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                label: "BasicSliver", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "AdvanceSliver", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "TabBarSliver", icon: Icon(Icons.home)),
          ]),
    );
  }
}
