import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoAlertDialog extends StatefulWidget {
  const MyCupertinoAlertDialog({Key? key}) : super(key: key);

  @override
  State<MyCupertinoAlertDialog> createState() => _MyCupertinoAlertDialogState();
}

class _MyCupertinoAlertDialogState extends State<MyCupertinoAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Alert Dialog", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
        child: CustomTextButton(
          title: 'Show Cupertino Alert Dialog',
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDestructiveAction: true,
                        child: const Text("Don't Allow"),
                      ),
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDefaultAction: true,
                        child: const Text("Allow"),
                      )
                    ],
                    title: const Text(
                        "Allow Maps to access your location while you use the app?"),
                    content: const Text(
                        "Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times."),
                  );
                });
          },
        ),
      ),
    );
  }
}
