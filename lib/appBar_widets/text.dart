import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "ghefgeueycvesdheffjhjfbsuh          dbyudsybufgysbfgeqfYUEIFYAEYIYBIHBVJHDBYSdifbSHJBFSIEYFBSUIHBFHESBYEFB",
      textAlign: TextAlign.justify,
      textDirection: TextDirection.ltr,
      // overflow: TextOverflow.ellipsis,
      maxLines: 3,
      // softWrap: false,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          backgroundColor: Colors.grey,
          letterSpacing: 2.0,
          wordSpacing: 20.0,
          height: 3.0,
          fontStyle: FontStyle.italic),
    );
  }
}
