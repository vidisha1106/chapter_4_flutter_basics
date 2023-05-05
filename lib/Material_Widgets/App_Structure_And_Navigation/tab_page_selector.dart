import 'package:flutter/material.dart';

List<Widget> widget = [
  const Icon(Icons.wb_cloudy_outlined),
  const Icon(Icons.beach_access_sharp),
  const Icon(Icons.sunny)
];

class MyTabPageSelector extends StatefulWidget {
  const MyTabPageSelector({Key? key}) : super(key: key);

  @override
  State<MyTabPageSelector> createState() => _MyTabPageSelectorState();
}

class _MyTabPageSelectorState extends State<MyTabPageSelector>
    with SingleTickerProviderStateMixin {
  int index = 0;
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("TabPageSelector", style: TextStyle(fontSize: 25)),
        elevation: 0,
      ),
      body: Stack(alignment: Alignment.center, children: [
        TabBarView(
          controller: tabController,
          children: widget,
        ),
        Positioned(
          bottom: 25,
          child: TabPageSelector(
            controller: tabController,
            color: Colors.white,
            borderStyle: BorderStyle.solid,
            indicatorSize: 18,
            selectedColor: const Color(0xffff4d6d),
          ),
        ),
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: widget.length, vsync: this, initialIndex: index);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
