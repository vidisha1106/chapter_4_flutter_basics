import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {

  bool shape=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: const Color(0xffff4d6d0),
                  shape: shape? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextButton(title: 'tap', onPressed: () {
                setState(() {
                  shape=!shape;
                });
              },),
            )
          ],
        ),
      ),
    );
  }
}
