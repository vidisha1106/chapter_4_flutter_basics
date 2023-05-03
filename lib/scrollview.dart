import 'package:flutter/material.dart';

class MyScrollView extends StatefulWidget {
  const MyScrollView({Key? key}) : super(key: key);

  @override
  State<MyScrollView> createState() => _MyScrollViewState();
}

class _MyScrollViewState extends State<MyScrollView> {
  List<String> entries = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

  List<int> colors = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

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
        title: const Text("ScrollView", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              ListView.separated(
                itemCount: entries.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
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
            ]),
          ),
          SliverGrid(
            delegate: SliverChildListDelegate(
              List.generate(
                allColors.length,
                    (index) => ColoredBox(color: allColors[index]),
              ),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
