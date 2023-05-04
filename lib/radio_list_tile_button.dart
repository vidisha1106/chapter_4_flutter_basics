import 'dart:io';

import 'package:flutter/material.dart';

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({Key? key}) : super(key: key);

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

enum Weekdays { Sunday, Monday, Tuesday, Thursday, Friday, Saturday, Wednesday }

class _MyRadioListTileState extends State<MyRadioListTile> {
  var rvalue = Weekdays.Friday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioLIstTileButton ")),
      body: Theme(
        data: ThemeData(unselectedWidgetColor: Color(0xfff8bbd0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Monday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Monday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("1st day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Tuesday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Tuesday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("2nd day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Wednesday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Wednesday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("3rd day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Thursday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Thursday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("4th day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Friday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Friday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("5th day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Saturday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Saturday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("6th day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                value: Weekdays.Sunday,
                groupValue: rvalue,
                onChanged: (value) {
                  setState(() {
                    rvalue = value!;
                  });
                },
                title: const Text("Sunday"),
                activeColor: const Color(0xffff4d6d),
                secondary: const Text("data"),
                subtitle: const Text("last day of the week"),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    side: BorderSide(width: 1, color: Color(0xffff4d6d))),
                selectedTileColor: const Color(0xfff8bbd0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}