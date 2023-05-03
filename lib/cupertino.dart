import 'package:chapter_4_flutter_basics/action_sheet.dart';
import 'package:chapter_4_flutter_basics/cupertino_alert_dialog.dart';
import 'package:chapter_4_flutter_basics/main.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertino extends StatefulWidget {
  const MyCupertino({Key? key}) : super(key: key);

  @override
  State<MyCupertino> createState() => _MyCupertinoState();
}

class _MyCupertinoState extends State<MyCupertino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Cupertino Widgets", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
          child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              children: [
            CustomElevatedButton(
              title: 'Action Sheet',
              routeName: MyActionSheet(),
            ),
            CustomElevatedButton(
              title: 'Alert Dialog',
              routeName: MyCupertinoAlertDialog(),
            ),
          ])),
    );
  }
}
