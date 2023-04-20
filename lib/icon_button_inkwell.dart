import 'package:flutter/material.dart';

class MyIconInkWell extends StatefulWidget {
  const MyIconInkWell({Key? key}) : super(key: key);

  @override
  State<MyIconInkWell> createState() => _MyIconInkWellState();
}

class _MyIconInkWellState extends State<MyIconInkWell> {

  final iconFocus=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("IconButton & InkWell ",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        elevation: 0,
      ),
      body: Ink(
        decoration: ShapeDecoration(shape: OutlineInputBorder(),color: Colors.cyanAccent),
        child: IconButton(
            onPressed: () {},
            iconSize: 100,
            icon: Icon(Icons.code),
            color: Color(0xffff4d6d),
            splashColor: Color(0xfff8bbd0),
            tooltip: "Code",
            autofocus: true,
            splashRadius: 50,highlightColor: Colors.red),
      ),
    );
  }
}
