import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List<Color> allColors = [
    Colors.black,
    Colors.white,
    Colors.pink,
    Colors.lightBlue,
    Colors.deepOrangeAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.lime,
    Colors.red,
    Colors.teal,
    Colors.redAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("GridView", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          allColors.length,
          (index) => ColoredBox(color: allColors[index]),
        ),
      ),
    );
  }
}
