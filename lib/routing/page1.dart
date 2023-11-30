import 'package:flutter/material.dart';
import 'package:newc/routing/page2.dart';

class PageOne extends StatefulWidget {
  final String statement;
  const PageOne({super.key, required this.statement});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PageTwo()));
              },
              child: Text("Go to Page Two")),
          Text(widget.statement)
        ],
      ),
    );
  }
}
