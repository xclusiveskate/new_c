import 'package:flutter/material.dart';
import 'package:newc/routing/page1.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Main Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageOne(
                              statement: "I am Coming from Main Route",
                            )));
              },
              child: Text("Go to Next Page"))
        ],
      ),
    );
  }
}
