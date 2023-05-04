import 'package:chapter_4_flutter_basics/grid_view.dart';
import 'package:chapter_4_flutter_basics/listview.dart';
import 'package:chapter_4_flutter_basics/stepper.dart';
import 'package:chapter_4_flutter_basics/table.dart';
import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        allowImplicitScrolling: true,
        children: [
          MyGridView(),
          MyTable(),
          MyStepper()
        ],
      ),
    );
  }
}
