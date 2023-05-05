import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Reusable_Code/components/custom_text_button.dart';

class MyActionSheet extends StatefulWidget {
  const MyActionSheet({Key? key}) : super(key: key);

  @override
  State<MyActionSheet> createState() => _MyActionSheetState();
}

class _MyActionSheetState extends State<MyActionSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ActionSheet")),
      body: Center(
        child:
        CustomTextButton(
          title: 'Show Cupertino ActionSheet',
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  message: const Text("Choose Options"),
                  title: const Text(
                    "Your Options Are : ",
                  ),
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("One"),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Two"),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Three"),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },isDestructiveAction: true,
                      isDefaultAction: true,
                      child: const Text("Delete"),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(onPressed: () {
                    Navigator.pop(context);
                  }, child: const Text("Cancel")),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
