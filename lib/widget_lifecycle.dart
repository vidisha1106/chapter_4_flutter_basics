import 'package:chapter_4_flutter_basics/lifecycle_second_page.dart';
import 'package:chapter_4_flutter_basics/main.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as debug;

class MyWidgetLifecycle extends StatefulWidget {
  const MyWidgetLifecycle({Key? key}) : super(key: key);

  @override
  State<MyWidgetLifecycle> createState() => _MyWidgetLifecycleState();
}

class _MyWidgetLifecycleState extends State<MyWidgetLifecycle> {
  @override
  Widget build(BuildContext context) {
    debug.log("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Widget Lifecycle", style: TextStyle(fontSize: 25)),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              title: 'Go',
              routeName: MySecondPage(),
            )
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    debug.log("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    debug.log("dispose");
  }

  @override
  void didChangeDependencies() {
    debug.log("didChangeDependencies");
  }

  @override
  void initState() {
    debug.log("initState");
  }

  @override
  void didUpdateWidget(oldWidget) {
    debug.log("didUpdateWidget");
  }
}
