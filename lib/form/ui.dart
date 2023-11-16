import 'package:flutter/material.dart';

import 'package:newc/form/date_picker.dart';
import 'package:newc/form/drop_down.dart';
import 'package:newc/form/form.dart';

class FormsUi extends StatefulWidget {
  const FormsUi({super.key});

  @override
  State<FormsUi> createState() => _FormsUiState();
}

class _FormsUiState extends State<FormsUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      animationDuration: const Duration(microseconds: 1),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Forms"),
          bottom: const TabBar(tabs: [
            Tab(
              child: Text("form"),
            ),
            Tab(
              child: Text("dropDown"),
            ),
            Tab(
              child: Text("datePick"),
            ),
            Tab(
              child: Text("textField"),
            ),
          ]),
        ),
        body: TabBarView(children: [
          myForm(),
          DropDowns(),
          PickDate(),
          Text("textField"),
        ]),
      ),
    );
  }
}
