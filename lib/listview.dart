import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> entries = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

  List<int> colors = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("ListView", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: entries.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            color: Colors.pink[colors[index]],
            child: Text(entries[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                )),
          );
        },
        padding: const EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
