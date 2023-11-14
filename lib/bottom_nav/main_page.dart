import 'package:flutter/material.dart';
import 'package:newc/bottom_nav/pages/acct_bal.dart';
import 'package:newc/bottom_nav/pages/home.dart';
import 'package:newc/bottom_nav/pages/profile.dart';
import 'package:newc/bottom_nav/pages/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List pages = [Home(), Profile(), Search(), Accountbalance()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Balance"),
        ],
      ),
    );
  }
}

class NewBottomNavBar extends StatefulWidget {
  const NewBottomNavBar({super.key});

  @override
  State<NewBottomNavBar> createState() => _NewBottomNavBarState();
}

class _NewBottomNavBarState extends State<NewBottomNavBar> {
  int currentIndex = 0;
  List<Widget> pages = [Home(), Profile(), Search(), Accountbalance()];
  PageController pager = PageController();

  @override
  void dispose() {
    pager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pager,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            // pager.jumpToPage(index);
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pager.jumpToPage(index);
          });
        },
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Balance"),
        ],
      ),
    );
  }
}
