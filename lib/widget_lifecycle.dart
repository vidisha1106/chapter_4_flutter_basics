import 'package:flutter/material.dart';

class MyWidgetLifecycle extends StatefulWidget {
  const MyWidgetLifecycle({Key? key}) : super(key: key);

  @override
  State<MyWidgetLifecycle> createState() => _MyWidgetLifecycleState();
}

class _MyWidgetLifecycleState extends State<MyWidgetLifecycle> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
