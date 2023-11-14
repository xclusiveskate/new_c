// ignore_for_file: public_member_api_docs, sort_constructors_first
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
              itemCount: details.length,
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
                    leading: Text(details[index].age.toString()),
                    title: Text(details[index].name),
                    subtitle: Text(details[index].school),
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

  List name = [
    {'name': "ade", "age": 3, "school": "sqi"},
    {'name': "wale", "age": 4, "school": "sqi1"},
    {'name': "kunle", "age": 5, "school": "sqi2"},
    {'name': "shola", "age": 6, "school": "sqi3"},
    {'name': "shade", "age": 7, "school": "sqi4"},
  ];

  List<Details> details = [
    Details(name: "ade", age: 3, school: "sqi"),
    Details(name: "wale", age: 4, school: "sqi1"),
    Details(name: "kunle", age: 5, school: "sqi2"),
    Details(name: "shola", age: 6, school: "sqi3"),
    Details(name: "shade", age: 7, school: "sqi4"),
  ];
}

class Details {
  final String name;
  final int age;
  final String school;
  Details({
    required this.name,
    required this.age,
    required this.school,
  });
}
