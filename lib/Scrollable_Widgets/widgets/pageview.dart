import 'package:chapter_4_flutter_basics/Material_Widgets/Information_Displays/grid_view.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Layout/stepper.dart';
import 'package:chapter_4_flutter_basics/Scrollable_Widgets/widgets/table.dart';
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
        children: const [
          MyGridView(),
          MyTable(),
          MyStepper()
        ],
      ),
    );
  }
}
