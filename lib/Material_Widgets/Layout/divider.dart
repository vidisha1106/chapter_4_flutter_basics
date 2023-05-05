import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatefulWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  State<MyDivider> createState() => _MyDividerState();
}

class _MyDividerState extends State<MyDivider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Divider")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(color: Colors.teal, width: 100, height: 100),
        const Divider(
            height: 50,
            color: Colors.pink,
            indent: 100,
            endIndent: 100,
            thickness: 2),
        Container(
          color: Colors.redAccent,
          height: 100,
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.upi,
                width: 50,
                height: 50,
              ),
              const VerticalDivider(
                  thickness: 2, color: Colors.black, width: 25),
              Image.asset(
                Images.creditCard,
                width: 50,
                height: 50,
              ),
              const VerticalDivider(
                  color: Colors.black, thickness: 2, width: 25),
              Image.asset(
                Images.gpay,
                width: 50,
                height: 50,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
