import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class Toast extends StatefulWidget {
  const Toast({super.key});

  @override
  State<Toast> createState() => _ToastState();
}

class _ToastState extends State<Toast> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            toast('I am a tosat', duration: Duration(milliseconds: 1));
          },
          child: const Text("Show Toast"),
        ),
      ),
    );
  }

  void showToast() {
    // return toast("I am showing you a Toast",
    //     duration: const Duration(seconds: 3));
  }
}
