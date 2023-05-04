import 'package:chapter_4_flutter_basics/grid_view.dart';
import 'package:chapter_4_flutter_basics/pageview.dart';
import 'package:chapter_4_flutter_basics/scrollview.dart';
import 'package:chapter_4_flutter_basics/table.dart';
import 'package:flutter/material.dart';

import 'listview.dart';
import 'main.dart';

class MyScrollableWidgets extends StatefulWidget {
  const MyScrollableWidgets({Key? key}) : super(key: key);

  @override
  State<MyScrollableWidgets> createState() => _MyScrollableWidgetsState();
}

class _MyScrollableWidgetsState extends State<MyScrollableWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Scrollable Widgets", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              CustomElevatedButton(
                title: 'ListView',width: 200,
                routeName: MyListView(),
              ),
              CustomElevatedButton(
                title: 'GridView',width: 200,
                routeName: MyGridView(),
              ),
              CustomElevatedButton(
                title: 'Table',width: 200,
                routeName: MyTable(),
              ),
              CustomElevatedButton(
                title: 'PageView',width: 200,
                routeName: MyPageView(),
              ),
              CustomElevatedButton(
                title: 'ScrollView',width: 200,
                routeName: MyScrollView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
