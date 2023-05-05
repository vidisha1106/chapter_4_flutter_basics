import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool dancing = false;
  bool singing = false;
  bool drawing = false;
  bool cooking = false;
  bool coding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CheckBox")),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Text("Select Your Hobbies : ",
              style: TextStyle(fontSize: 25, color: Color(0xffff4d6d))),
        ),
        CheckboxListTile(
          value: dancing,
          onChanged: (bool? value) {
            setState(() {
              dancing = value!;
            });
          },
          title: const Text("Dancing", style: TextStyle(fontSize: 20)),
          selected: dancing,
          checkboxShape: const ContinuousRectangleBorder(),
          selectedTileColor: const Color(0xffffccd5),
          checkColor: const Color(0xffffccd5),
          activeColor: const Color(0xffff4d6d),
          controlAffinity: ListTileControlAffinity.leading,
          //side: BorderSide(width: 2.5,color: Color(0xffff4d6d)),
        ),
        CheckboxListTile(
          value: singing,
          onChanged: (bool? value) {
            setState(() {
              singing = value!;
            });
          },
          title: const Text("Singing", style: TextStyle(fontSize: 20)),
          selected: singing,
          checkboxShape: const ContinuousRectangleBorder(),
          selectedTileColor: const Color(0xffffccd5),
          checkColor: const Color(0xffffccd5),
          activeColor: const Color(0xffff4d6d),
          controlAffinity: ListTileControlAffinity.leading,
          //side: BorderSide(width: 2.5,color: Color(0xffff4d6d)),
        ),
        CheckboxListTile(
          value: drawing,
          onChanged: (bool? value) {
            setState(() {
              drawing = value!;
            });
          },
          title: const Text("Drawing", style: TextStyle(fontSize: 20)),
          selected: drawing,
          checkboxShape: const ContinuousRectangleBorder(),
          selectedTileColor: const Color(0xffffccd5),
          checkColor: const Color(0xffffccd5),
          activeColor: const Color(0xffff4d6d),
          controlAffinity: ListTileControlAffinity.leading,
          //side: BorderSide(width: 2.5,color: Color(0xffff4d6d)),
        ),
        CheckboxListTile(
          value: cooking,
          onChanged: (bool? value) {
            setState(() {
              cooking = value!;
            });
          },
          title: const Text("Cooking", style: TextStyle(fontSize: 20)),
          selected: cooking,
          checkboxShape: const ContinuousRectangleBorder(),
          selectedTileColor: const Color(0xffffccd5),
          checkColor: const Color(0xffffccd5),
          activeColor: const Color(0xffff4d6d),
          controlAffinity: ListTileControlAffinity.leading,
          //side: BorderSide(width: 2.5,color: Color(0xffff4d6d)),
        ),
        CheckboxListTile(
          value: coding,
          onChanged: (bool? value) {
            setState(() {
              coding = value!;
            });
          },
          title: const Text("Coding", style: TextStyle(fontSize: 20)),
          selected: coding,
          checkboxShape: const ContinuousRectangleBorder(),
          selectedTileColor: const Color(0xffffccd5),
          checkColor: const Color(0xffffccd5),
          activeColor: const Color(0xffff4d6d),
          controlAffinity: ListTileControlAffinity.leading,
          //side: BorderSide(width: 2.5,color: Color(0xffff4d6d)),
        ),
      ]),
    );
  }
}
