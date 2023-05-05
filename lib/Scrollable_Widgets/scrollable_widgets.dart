import 'package:chapter_4_flutter_basics/Material_Widgets/Information_Displays/grid_view.dart';
import 'package:chapter_4_flutter_basics/Scrollable_Widgets/widgets/pageview.dart';
import 'package:chapter_4_flutter_basics/Scrollable_Widgets/widgets/scrollview.dart';
import 'package:chapter_4_flutter_basics/Scrollable_Widgets/widgets/table.dart';
import 'package:flutter/material.dart';

import '../Reusable_Code/components/custom_elevated_button.dart';
import 'widgets/listview.dart';

class MyScrollableWidgets extends StatefulWidget {
  const MyScrollableWidgets({Key? key}) : super(key: key);

  @override
  State<MyScrollableWidgets> createState() => _MyScrollableWidgetsState();
}

class _MyScrollableWidgetsState extends State<MyScrollableWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scrollable Widgets")),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: const [

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
