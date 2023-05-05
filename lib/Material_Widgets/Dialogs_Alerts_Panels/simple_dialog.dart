import 'package:flutter/material.dart';

import '../../Reusable_Code/components/custom_text_button.dart';

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({Key? key}) : super(key: key);

  @override
  State<MySimpleDialog> createState() => _MySimpleDialogState();
}

class _MySimpleDialogState extends State<MySimpleDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SimpleDialog ")),
      body: Center(
        child: CustomTextButton(
          title: 'Show Departments',
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    alignment: Alignment.center,
                    elevation: 25,
                    title: const Text("Choose Your Department"),
                    children: [
                      SimpleDialogOption(
                        child: const Text("Computer"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text("Information Technology"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text("Civil"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text("Mechanical"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text("BioMedical"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
