import 'package:flutter/material.dart';

class ListGridView extends StatefulWidget {
  const ListGridView({super.key});

  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  ScrollController control = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // ListView(
          //   shrinkWrap: true,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ListTile(
          //         tileColor: Colors.blue[50],
          //         splashColor: Colors.green,
          //         onTap: () {},
          //         leading: CircleAvatar(),
          //         title: Text("Woleola"),
          //         subtitle: Text("I am comig today, cook better for me"),
          //         trailing: Text("data"),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ListTile(
          //         contentPadding: EdgeInsets.all(8),
          //         tileColor: Colors.blue[50],
          //         splashColor: Colors.green,
          //         onTap: () {},
          //         leading: CircleAvatar(),
          //         title: Text("Woleola"),
          //         subtitle: Text("I am comig today, cook better for me"),
          //         trailing: Text("data"),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ListTile(
          //         tileColor: Colors.blue[50],
          //         splashColor: Colors.green,
          //         onTap: () {},
          //         leading: CircleAvatar(),
          //         title: Text("Woleola"),
          //         subtitle: Text("I am comig today, cook better for me"),
          //         trailing: Text("data"),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ListTile(
          //         tileColor: Colors.blue[50],
          //         splashColor: Colors.green,
          //         onTap: () {},
          //         leading: CircleAvatar(),
          //         title: Text("Woleola"),
          //         subtitle: Text("I am comig today, cook better for me"),
          //         trailing: Text("data"),
          //       ),
          //     ),
          //   ],
          // ),
          // Divider(
          //   height: 2.0,
          // ),
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              // primary: false,
              controller: control,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.blue[50],
                    splashColor: Colors.green,
                    onTap: () {},
                    leading: CircleAvatar(),
                    title: Text("Woleola"),
                    subtitle: Text("I am comig today, cook better for me"),
                    trailing: Text("data"),
                  ),
                );
              }),

          // GridView(
          //   shrinkWrap: true,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //   ),
          //   children: [
          //     GridTile(
          //         // header: Text("Header"),
          //         footer: Text("Footer"),
          //         child: Text("I am the child")),
          //     GridTile(
          //         // header: Text("Header"),
          //         footer: Text("Footer"),
          //         child: Text("I am the child")),
          //     GridTile(
          //         // header: Text("Header"),
          //         footer: Text("Footer"),
          //         child: Text("I am the child")),
          //     GridTile(
          //         // header: Text("Header"),
          //         footer: Text("Footer"),
          //         child: Text("I am the child")),
          //     GridTile(
          //         // header: Text("Header"),
          //         footer: Text("Footer"),
          //         child: Text("I am the child")),
          //     GridTile(
          //         // header: Text("Header"),
          //         footer: Text("Footer"),
          //         child: Text("I am the child")),
          //   ],
          // )

          GridView.builder(
              itemCount: name.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6.0,
                  childAspectRatio: 3 / 4),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blue,
                    child: Text("This is a grid"),
                  ),
                );
              })
        ],
      ),
    );
  }

  List name = [];
}
