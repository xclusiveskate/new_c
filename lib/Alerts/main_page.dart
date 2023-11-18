import 'package:flutter/material.dart';

import 'package:newc/Alerts/alert_dialog.dart';
import 'package:newc/Alerts/bottom_sheet.dart';
import 'package:newc/Alerts/default_dialog.dart';
import 'package:newc/Alerts/show_notify.dart';
import 'package:newc/Alerts/snackbar.dart';
import 'package:newc/Alerts/toast.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  List pages = [
    const alertDialog(),
    const snackBar(),
    const bottomSheet(),
    const Toast(),
    const ShowNotify(),
    const defaultDialog(),
  ];
  int selectedIndex = 0;
  void tap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: tap,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  label: "alertDial", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "SnackBar", icon: Icon(Icons.call)),
              BottomNavigationBarItem(
                  label: "BottomSit", icon: Icon(Icons.audio_file)),
              BottomNavigationBarItem(
                  label: "Toast", icon: Icon(Icons.settings)),
              BottomNavigationBarItem(
                  label: "Notify", icon: Icon(Icons.notification_add)),
              BottomNavigationBarItem(
                  label: "defaultDial", icon: Icon(Icons.person))
            ]),
      ),
    );
  }
}
