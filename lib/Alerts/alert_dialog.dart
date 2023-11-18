// import 'dart:js';

import 'package:flutter/material.dart';

class alertDialog extends StatefulWidget {
  const alertDialog({super.key});

  @override
  State<alertDialog> createState() => _alertDialogState();
}

class _alertDialogState extends State<alertDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Alert dialog"),
            Container(
              alignment: Alignment.center,
              child: Text(alertInfo),
            ),
            ElevatedButton(
                onPressed: showAlertDialog,
                child: const Text("Show Alert Dialog"))
          ],
        ),
      ),
    );
  }

  String alertInfo = '';

  showAlertDialog() async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.amber.withOpacity(0.5),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            title: Text("Change my text"),
            content: Text("I want to change my text"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      alertInfo = "I have changed your text for you";
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Confirm")),
            ],
          );
        });
  }
}
