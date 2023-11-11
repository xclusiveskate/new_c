import 'package:flutter/material.dart';

class ColumnRowWrap extends StatelessWidget {
  const ColumnRowWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("safehbedhjehf"),
        Text("safehbedhjehf"),
        Text("safehbedhjehf"),
        Text("safehbedhjehf"),
        Text("safehbedhjehf"),
        Text("safehbedhjehf"),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add),
              Icon(Icons.add),
            ],
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
            Text("safehbedhjehf"),
          ],
        )
      ],
    );
  }
}
