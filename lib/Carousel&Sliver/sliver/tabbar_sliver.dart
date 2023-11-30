import 'package:flutter/material.dart';

class TabBarSlivers extends StatefulWidget {
  const TabBarSlivers({super.key});

  @override
  State<TabBarSlivers> createState() => _TabBarSliversState();
}

class _TabBarSliversState extends State<TabBarSlivers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold());
  }
}
