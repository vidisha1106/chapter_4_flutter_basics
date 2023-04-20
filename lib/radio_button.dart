import 'package:flutter/material.dart';

enum RColors { Red, Yellow, Green, Blue }

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  var rValue = RColors.Red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("RadioButton",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        elevation: 0,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ListTile(
            title: const Text('Red'),
            leading: Radio(
                value: RColors.Red,
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
                value: RColors.Yellow,
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
                value: RColors.Green,
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
                value: RColors.Blue,
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
