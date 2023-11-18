import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class ShowNotify extends StatefulWidget {
  const ShowNotify({super.key});

  @override
  State<ShowNotify> createState() => _ShowNotifyState();
}

class _ShowNotifyState extends State<ShowNotify> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: OutlinedButton(
          child: const Text("show notification"),
          onPressed: () {
            showSimpleNotification(
              Text("I am a notification"),
            );
          },
        ),
      ),
    );
  }
}
