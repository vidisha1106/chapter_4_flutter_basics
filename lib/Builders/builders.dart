import 'package:chapter_4_flutter_basics/Builders/future_builder.dart';
import 'package:chapter_4_flutter_basics/Builders/layout_builder.dart';
import 'package:chapter_4_flutter_basics/Builders/stream_builder.dart';
import 'package:flutter/material.dart';

import '../Reusable_Code/components/custom_elevated_button.dart';

class MyBuilders extends StatefulWidget {
  const MyBuilders({Key? key}) : super(key: key);

  @override
  State<MyBuilders> createState() => _MyBuildersState();
}

class _MyBuildersState extends State<MyBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Builders")),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: const [
              CustomElevatedButton(
                title: "Future Builder",
                width: 200,
                routeName: MyFutureBuilder(),
              ),
              CustomElevatedButton(
                title: "Layout Builder",
                width: 200,
                routeName: MyLayoutBuilder(),
              ),
              CustomElevatedButton(
                title: "Stream Builder",
                width: 200,
                routeName: MyStreamBuilder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
