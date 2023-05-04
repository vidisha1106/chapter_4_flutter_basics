import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatefulWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<MyFloatingActionButton> createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("FloatingActionButton")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            const Text("Small",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffff4d6d),
                )),
            FloatingActionButton.small(
              onPressed: () {},
              shape: const CircleBorder(),
              backgroundColor: const Color(0xffff4d6d),
              elevation: 25,
              tooltip: "FloatingActionButton",
              child: const Icon(
                Icons.navigation,
              ),
            ),
            const Text("Regular",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffff4d6d),
                )),
            FloatingActionButton(
              onPressed: () {},
              shape: const CircleBorder(),
              backgroundColor: const Color(0xffff4d6d),
              elevation: 25,
              tooltip: "FloatingActionButton",
              child: const Icon(
                Icons.navigation,
              ),
            ),
            const Text("Large",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffff4d6d),
                )),
            FloatingActionButton.large(
              onPressed: () {},
              shape: const CircleBorder(),
              backgroundColor: const Color(0xffff4d6d),
              elevation: 25,
              tooltip: "FloatingActionButton",
              child: const Icon(
                Icons.navigation,
              ),
            ),
            const Text("Extended",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffff4d6d),
                )),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Text("Approve"),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              backgroundColor: const Color(0xffff4d6d),
              icon: const Icon(Icons.thumb_up),
              elevation: 25,
              tooltip: "FloatingActionButton with icon",
              extendedIconLabelSpacing: 15,
              extendedTextStyle: const TextStyle(fontSize: 18),
            ),
          ]),
        ));
  }
}
