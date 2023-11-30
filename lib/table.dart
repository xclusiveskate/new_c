import 'package:flutter/material.dart';

class Tablee extends StatefulWidget {
  const Tablee({super.key});

  @override
  State<Tablee> createState() => _TableeState();
}

class _TableeState extends State<Tablee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Table"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Table(
              textDirection: TextDirection.ltr,
              border: TableBorder.all(
                color: Colors.blue,
                width: 2,
              ),
              columnWidths: const {
                0: FixedColumnWidth(30),
                // 1: FixedColumnWidth(60),
              },
              children: const [
                TableRow(
                  children: [
                    Text("S/N"),
                    Text("Name"),
                    Text("Gender"),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Text("1"),
                    Text("Name 1"),
                    Text("Male"),
                  ],
                ),
                TableRow(
                  children: [
                    Text("2"),
                    Text("Name 2"),
                    Text("Female"),
                  ],
                ),
                TableRow(
                  children: [
                    Text("2"),
                    Text("Name 2"),
                    Text("Female"),
                  ],
                ),
                TableRow(
                  children: [
                    Text("2"),
                    Text("Name 2"),
                    Text("Female"),
                  ],
                ),
                TableRow(
                  children: [
                    Text("2"),
                    Text("Name 2"),
                    Text("Female"),
                  ],
                ),
                TableRow(
                  children: [
                    Text("2"),
                    Text("Name 2"),
                    Text("Female"),
                  ],
                ),
                TableRow(
                  children: [
                    Text("2"),
                    Text("Name 2"),
                    Text("Female"),
                  ],
                ),
              ],
            ),
            DataTable(
              border: TableBorder.all(color: Colors.blue),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              columns: const [
                DataColumn(label: Text("S/N")),
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Gender")),
                DataColumn(label: Text("More")),
              ],
              rows: [
                DataRow(
                  color: isSelected
                      ? MaterialStateProperty.all(Colors.green)
                      : MaterialStateProperty.all(Colors.blue),
                  selected: isSelected,
                  onLongPress: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Name 1")),
                    DataCell(Text("Male")),
                    DataCell(IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Name 1")),
                    DataCell(Text("Male")),
                    DataCell(IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("2")),
                    DataCell(Text("Name 2")),
                    DataCell(Text("Male")),
                    DataCell(IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("3")),
                    DataCell(Text("Name 3")),
                    DataCell(Text("Male")),
                    DataCell(IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("4")),
                    DataCell(Text("Name 4")),
                    DataCell(Text("Male")),
                    DataCell(IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("5")),
                    DataCell(Text("Name 5")),
                    DataCell(Text("Male")),
                    DataCell(IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  onselceted(int index) {}
  bool isSelected = false;
}
