import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/lifecycle_second_page.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as debug;

import '../../Reusable_Code/components/custom_elevated_button.dart';

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
      appBar: AppBar(title: const Text("Widget Lifecycle ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
    super.deactivate();
    debug.log("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    debug.log("dispose");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debug.log("didChangeDependencies");
  }

  @override
  void initState() {
    super.initState();
    debug.log("initState");
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    debug.log("didUpdateWidget");
  }
}
