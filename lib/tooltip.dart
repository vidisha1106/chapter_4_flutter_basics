import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class MyToolTip extends StatefulWidget {
  const MyToolTip({Key? key}) : super(key: key);

  @override
  State<MyToolTip> createState() => _MyToolTipState();
}

class _MyToolTipState extends State<MyToolTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("ToolTip", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
        child: Tooltip(
          child: Image.asset(Images.upi, height: 100, width: 100),
          message: 'UPI id',
          verticalOffset: 50,
          height: 50,
        ),
      ),
    );
  }
}
