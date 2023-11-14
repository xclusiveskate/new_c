import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newc/appBar_widets/body_tab.dart';
import 'package:newc/appBar_widets/buttons.dart';
import 'package:newc/appBar_widets/column_row.dart';
import 'package:newc/appBar_widets/cont_card_sizedbox.dart';
import 'package:newc/appBar_widets/list_gridview.dart';
import 'package:newc/appBar_widets/stack.dart';
import 'package:newc/appBar_widets/text.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      initialIndex: 1,
      animationDuration: const Duration(milliseconds: 30),
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          // centerTitle: true,
          shadowColor: Colors.blue,
          systemOverlayStyle: const SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.yellow),
          backgroundColor: Colors.green,
          automaticallyImplyLeading: false,
          title: const Text("First Application"),

          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton(
                position: PopupMenuPosition.over,
                tooltip: "See More",
                onSelected: (value) {
                  print(value);
                },
                onCanceled: () {
                  print("no item selected");
                },
                icon: const Icon(Icons.add),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                        onTap: () {}, value: 1, child: const Text("New Group")),
                    PopupMenuItem(
                        onTap: () {},
                        value: 2,
                        child: const Text("New Broadcast")),
                    PopupMenuItem(
                        onTap: () {}, value: 3, child: const Text("Labels")),
                    PopupMenuItem(
                        onTap: () {},
                        value: 4,
                        child: const Text("Linked Devices")),
                    PopupMenuItem(
                        onTap: () {},
                        value: 5,
                        child: const Text("Starred messages")),
                    PopupMenuItem(
                        onTap: () {}, value: 6, child: const Text("Settings")),
                  ];
                })
          ],

          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue,
              indicatorWeight: 5.0,
              labelColor: Colors.lime,
              unselectedLabelColor: Colors.white,
              padding: EdgeInsets.all(0),
              tabs: [
                Tab(text: "text"),
                Tab(text: "container-card-sizedbox"),
                Tab(text: "col-row-wrap"),
                Tab(text: "buttons"),
                Tab(text: "list-gridview"),
                Tab(text: "stack"),
                Tab(text: "bodytab"),
              ]),
        ),
        body: const TabBarView(children: [
          MyText(),
          ContainerCardSizedBox(),
          ColumnRowWrap(),
          MyButtons(),
          ListGridView(),
          StackWidget(),
          BodyTab(),
        ]),
      ),
    );
  }
}
