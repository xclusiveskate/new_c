import 'package:flutter/material.dart';

class BodyTab extends StatefulWidget {
  const BodyTab({super.key});

  @override
  State<BodyTab> createState() => _BodyTabState();
}

class _BodyTabState extends State<BodyTab> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 3, vsync: this, animationDuration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcome Mr Olaide"),
        Text(
          "What are you buying from us today",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        TabBar(
            unselectedLabelColor: Colors.amber,
            indicatorColor: Colors.blue,
            // indicatorPadding: EdgeInsets.all(3.0),
            controller: tabController,
            tabs: [Text("all"), Text("Shoes"), Text("Bags")]),
        Container(
          child: TabBarView(
            children: [
              Text("all"),
              Text("Shoes"),
              Text("Bags"),
            ],
          ),
        )
      ],
    );
  }
}
