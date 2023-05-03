import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Table", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(25),
              child: Text("Details Of Student", textScaleFactor: 2),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Table(
                textDirection: TextDirection.ltr,
                border: TableBorder.all(color: Colors.grey, width: 1),
                children: const [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Name", textScaleFactor: 1.5),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("RollNo", textScaleFactor: 1.5),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Stream", textScaleFactor: 1.5),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Disha"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("11"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Arts"),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Charmi"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("12"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Commerce"),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Puja"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("15"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Science"),
                    ),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
