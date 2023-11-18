import 'package:flutter/material.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({super.key});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
            onPressed: () async {
              await showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(mainAxisSize: MainAxisSize.min, children: [
                      const TextField(),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Send Email")),
                        ],
                      ),
                      const Column(
                        children: [
                          Text("info"),
                          Text("info"),
                          Text("info"),
                          Text("info"),
                        ],
                      )
                    ]);
                  });
            },
            child: const Text("Show me a bottom sheet")),
      ),
    );
  }
}
