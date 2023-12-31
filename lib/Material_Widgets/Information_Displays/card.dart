import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card")),
      body: InkWell(
        onTap: (){},
        child: Card(
          elevation: 25,
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          margin: const EdgeInsets.all(10),
          borderOnForeground: true,
          semanticContainer: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(Images.unstoppable),
                  title: const Text("Unstoppable"),
                  subtitle: const Text(
                      "written by Sia and Christopher Braide, and produced by Jesse Shatkin"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Theme(
                      data: ThemeData(),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Pause"),
                      )),
                  Theme(
                      data: ThemeData(),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Play"),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
