import 'package:flutter/material.dart';
import 'package:newc/routing/main_route.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Three"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MainRoute()),
                    (route) => false);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => MainRoute()));
              },
              child: Text("Go to Page One"))
        ],
      ),
    );
  }
}
