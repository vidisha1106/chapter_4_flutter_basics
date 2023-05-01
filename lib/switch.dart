import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool enable1 = false;
  bool enable2 = false;
  bool enable3 = false;
  bool enable4 = false;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return const Icon(Icons.check);
    }
    return const Icon(Icons.close);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Switch", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Material Switch",
            style: TextStyle(
              color: Color(0xffff4d6d),
              fontSize: 25,
            ),
          ),
          Theme(
            data: ThemeData(
                useMaterial3: true,
                switchTheme: SwitchThemeData(thumbIcon: thumbIcon)),
            child: Padding(
              padding: const EdgeInsets.all(12.5),
              child: Switch(
                value: enable1,
                onChanged: (bool value) {
                  setState(() {
                    enable1 = value;
                  });
                },
                //thumbColor: MaterialStatePropertyAll(Color(0xffff4d6d)),
                activeColor: const Color(0xffff4d6d),
                inactiveThumbColor: Colors.grey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Cupertino Switch",
              style: TextStyle(
                color: Color(0xffff4d6d),
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.5),
            child: CupertinoSwitch(
              value: enable2,
              onChanged: (bool value) {
                setState(() {
                  enable2 = value;
                });
              },
              thumbColor: const Color(0xffffccd5),
              activeColor: const Color(0xffff4d6d),
              trackColor: Colors.pink[900],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Flutter Switch",
              style: TextStyle(
                color: Color(0xffff4d6d),
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.5),
            child: FlutterSwitch(
              value: enable3,
              onToggle: (bool value) {
                setState(() {
                  enable3 = value;
                });
              },
              activeColor: const Color(0xffffccd5),
              width: 125,
              height: 50,
              padding: 12,
              borderRadius: 25,
              activeIcon: const Icon(Icons.check),
              activeSwitchBorder:
                  Border.all(color: const Color(0xffff4d6d), width: 2),
              activeText: "Active",
              activeTextColor: const Color(0xffff4d6d),
              activeTextFontWeight: FontWeight.w900,
              activeToggleBorder:
                  Border.all(width: 1, color: const Color(0xffff4d6d)),
              activeToggleColor: const Color(0xffffccd5),
              inactiveIcon: const Icon(Icons.close),
              inactiveSwitchBorder: Border.all(color: Colors.black, width: 1),
              inactiveText: "Inactive",
              inactiveColor: Colors.grey,
              inactiveTextColor: Colors.black,
              inactiveTextFontWeight: FontWeight.w900,
              inactiveToggleBorder: Border.all(width: 1, color: Colors.black),
              inactiveToggleColor: Colors.grey[100],
              showOnOff: true,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "SwitchListTile",
              style: TextStyle(
                color: Color(0xffff4d6d),
                fontSize: 25,
              ),
            ),
          ),
         Switch(value: true
           , onChanged: (bool value) {
           setState(() {

           });
         },
           activeColor: Colors.red,
           inactiveTrackColor: Colors.yellow,
         ),
          Padding(
            padding: const EdgeInsets.all(12.5),
            child: SwitchListTile(
              value: enable4,
              onChanged: (bool value) {
                setState(() {
                  enable4 = value;
                });
              },
              activeColor: const Color(0xffff4d6d),
              inactiveThumbColor: Colors.grey[100],
              activeThumbImage: const AssetImage(Images.gif),
              controlAffinity: ListTileControlAffinity.platform,
              selectedTileColor: const Color(0xffffccd5),
              selected: enable4,
              title: const Text("Do you want to turn on Lights?"),
              shape: const ContinuousRectangleBorder(
                  side: BorderSide(color: Color(0xffff4d6d), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              secondary: const Icon(Icons.lightbulb_outline),
            ),
          )
        ]),
      ),
    );
  }
}
