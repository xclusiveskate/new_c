import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        Positioned(
            left: 50,
            top: 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )),
        Positioned(
            top: 160,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.orange,
            )),
      ],
    );
  }
}
