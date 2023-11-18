import 'package:flutter/material.dart';

class snackBar extends StatefulWidget {
  const snackBar({super.key});

  @override
  State<snackBar> createState() => _snackBarState();
}

class _snackBarState extends State<snackBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("Snack Bar"),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    padding: EdgeInsets.all(8),
                    action: SnackBarAction(label: "undo", onPressed: () {}),
                    duration: Duration(seconds: 5),
                    dismissDirection: DismissDirection.horizontal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.amber,
                    content: Text("User Logde in successfully"),
                  ),
                );
              },
              child: const Text("Show Snack Bar"))
        ],
      ),
    );
  }
}
