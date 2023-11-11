import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onLongPress: () {
              print("his name");
            },
            onPressed: () {
              print("my name ");
            },
            child: Text("Click on me")),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: TextStyle(fontWeight: FontWeight.bold)),
            // ButtonStyle(
            //     elevation: MaterialStateProperty.all(3),
            //     backgroundColor: MaterialStateProperty.all(Colors.amber),
            //     textStyle: MaterialStateProperty.all(
            //         TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
            onPressed: () {},
            child: Text("Sign in to your account")),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {},
              icon: Icon(Icons.payment_outlined),
              label: Text("Pay for the goods")),
        ),
        OutlinedButton(
            onPressed: () {}, child: Text("Sign up to have account")),
      ],
    );
  }
}
