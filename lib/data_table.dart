import 'package:flutter/material.dart';

class MyDataTable extends StatefulWidget {
  const MyDataTable({Key? key}) : super(key: key);

  @override
  State<MyDataTable> createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("DataTable", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: DataTable(columns: const [
        DataColumn(label: Text('Name'), numeric: true),
        DataColumn(label: Text('Technology')),
      ], rows: const [
        DataRow(cells: [
          DataCell(Text('Yash'),showEditIcon: true),
          DataCell(Text('Flutter')),
        ]),
        DataRow(
            selected: true,cells: [
          DataCell(Text('Vidisha')),
          DataCell(Text('Flutter')),
        ]),
        DataRow(cells: [
          DataCell(Text('Priyanshi')),
          DataCell(Text('Flutter')),
        ]),
        DataRow(cells: [
          DataCell(Text('Keval')),
          DataCell(Text('Flutter')),
        ]),
        DataRow(cells: [
          DataCell(Text('Udit')),
          DataCell(Text('Flutter')),
        ]),
        DataRow(cells: [
          DataCell(Text('Divyang')),
          DataCell(Text('Flutter')),
        ]),
        DataRow(cells: [
          DataCell(Text('Milan')),
          DataCell(Text('Flutter')),
        ]),
        DataRow(cells: [
          DataCell(Text('Vidhi')),
          DataCell(Text('NativeMobile')),
        ]),
        DataRow(cells: [
          DataCell(Text('Atul')),
          DataCell(Text('ReactNative')),
        ]),
        DataRow(cells: [
          DataCell(Text('Fill Name'),placeholder: true),
          DataCell(Text('Fill Technology'),placeholder: true),
        ]),
      ]),
    );
  }
}
