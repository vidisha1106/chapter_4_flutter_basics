import 'package:chapter_4_flutter_basics/Cupertino_Widgets/action_sheet.dart';
import 'package:chapter_4_flutter_basics/Cupertino_Widgets/cupertino_alert_dialog.dart';
import 'package:flutter/material.dart';

import '../Reusable_Code/components/custom_elevated_button.dart';

class MyCupertino extends StatefulWidget {
  const MyCupertino({Key? key}) : super(key: key);

  @override
  State<MyCupertino> createState() => _MyCupertinoState();
}

class _MyCupertinoState extends State<MyCupertino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cupertino Widgets")),
      body: Center(
          child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              children: const [
            CustomElevatedButton(
              title: 'Action Sheet',height: 60,width: 150,
              routeName: MyActionSheet(),
            ),
            CustomElevatedButton(
              title: 'Alert Dialog',height: 60,width: 150,
              routeName: MyCupertinoAlertDialog(),
            ),
          ])),
    );
  }
}
