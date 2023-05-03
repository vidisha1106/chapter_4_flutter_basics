import 'package:chapter_4_flutter_basics/future_builder.dart';
import 'package:chapter_4_flutter_basics/layout_builder.dart';
import 'package:chapter_4_flutter_basics/main.dart';
import 'package:chapter_4_flutter_basics/stream_builder.dart';
import 'package:flutter/material.dart';

class MyBuilders extends StatefulWidget {
  const MyBuilders({Key? key}) : super(key: key);

  @override
  State<MyBuilders> createState() => _MyBuildersState();
}

class _MyBuildersState extends State<MyBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Builders", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: [
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
