import 'package:flutter/material.dart';

class defaultDialog extends StatefulWidget {
  const defaultDialog({super.key});

  @override
  State<defaultDialog> createState() => _defaultDialogState();
}

class _defaultDialogState extends State<defaultDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () async {
            await showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () {}, child: Text("View Details")),
                        TextButton(onPressed: () {}, child: Text("Edit")),
                        TextButton(onPressed: () {}, child: Text("Delete")),
                        TextButton(onPressed: () {}, child: Text("Cancel")),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("cancel")),
                            TextButton(
                                onPressed: () {}, child: Text("confirm")),
                          ],
                        )
                      ],
                    ),
                  );
                });
          },
          child: const Text("Show default dialog Box"),
        ),
      ),
    );
  }
}
