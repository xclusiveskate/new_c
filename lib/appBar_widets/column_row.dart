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
        // Expanded(
        //     flex: 1,
        //     child: Container(
        //       color: Colors.blue,
        //     )),
        // Expanded(
        //     flex: 2,
        //     child: Container(
        //       color: Colors.green,
        //     )),
        // Text("safehbedhjehf"),
        // Text("safehbedhjehf"),
        // Text("safehbedhjehf"),
        // Text("safehbedhjehf"),
        // Text("safehbedhjehf"),
        // Text("safehbedhjehf"),
        SizedBox(
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Icon(Icons.add),
              // Icon(Icons.add),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.blue,
                    child: Text("sjhfejfhejbfvhewejhbfwehfbwuehwfbgvueh"),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  )),
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
