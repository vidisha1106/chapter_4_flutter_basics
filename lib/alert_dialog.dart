import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("AlertDialog", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: Center(
        child: CustomTextButton(
          title: 'Show AlertDialog',
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return Theme(
                    data: ThemeData(
                      colorSchemeSeed: const Color(0xffff4d6d),
                      //useMaterial3: true
                    ),
                    child: AlertDialog(
                      title: const Text("AlertDialog Title"),
                      elevation: 25,
                      icon: const Icon(Icons.error),
                      content: const Text("This is description of Alert Dialog "),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Remind Me Later")
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Yes")),
                        const TextButton(
                            onPressed: null,
                            child: Text("No")),

                      ],
                      iconColor: Colors.red,
                      shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
