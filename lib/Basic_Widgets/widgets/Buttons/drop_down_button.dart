import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({Key? key}) : super(key: key);

  @override
  State<MyDropDownButton> createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  List<String> lan = [
    'Flutter',
    'Php',
    'Android',
    'Native Mobile',
    'React Native',
    'Node JS',
    'Angular JS'
  ];

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("DropDownButton")),
        body: Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: const Color(0xfff8bbd0),
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: const Color(0xffff4d6d), width: 2),
                backgroundBlendMode: BlendMode.modulate),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                  value: dropdownValue,
                  iconSize: 30,
                  style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                  autofocus: true,
                  elevation: 25,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  alignment: Alignment.center,
                  dropdownColor: const Color(0xffFCC8D1),
                  hint: const Text('Choose your Language',
                      style: TextStyle(fontSize: 20, color: Color(0xffff4d6d))),
                  icon: const Icon(Icons.arrow_drop_down, color: Color(0xffff4d6d)),
                  items: lan
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },underline: Container()),
            ),
          ),
        ));
  }
}
