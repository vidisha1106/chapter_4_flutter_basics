import 'package:flutter/material.dart';

enum RColors { red, yellow, green, blue }

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  var rValue = RColors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RadioButton")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ListTile(
            title: const Text('Red'),
            leading: Radio(
                value: RColors.red,
                groupValue: rValue,
                fillColor: const MaterialStatePropertyAll(Colors.red),
                onChanged: (value) {
                  setState(() {
                    rValue = value!;
                  });
                }),
          ),
          ListTile(
            title: const Text("Yellow"),
            leading: Radio(
                value: RColors.yellow,
                fillColor: const MaterialStatePropertyAll(Colors.yellow),
                groupValue: rValue,
                onChanged: (value) {
                  setState(() {
                    rValue = value!;
                  });
                }),
          ),
          ListTile(
            title: const Text("Green"),
            leading: Radio(
                value: RColors.green,
                groupValue: rValue,
                fillColor: const MaterialStatePropertyAll(Colors.green),
                onChanged: (value) {
                  setState(() {
                    rValue = value!;
                  });
                }),
          ),
          ListTile(
            title: const Text("Blue"),
            leading: Radio(
                value: RColors.blue,
                groupValue: rValue,
                fillColor: const MaterialStatePropertyAll(Colors.blue),
                onChanged: (value) {
                  setState(() {
                    rValue = value!;
                  });
                }),
          ),
          Text('$rValue')
        ]),
      ),
    );
  }
}
