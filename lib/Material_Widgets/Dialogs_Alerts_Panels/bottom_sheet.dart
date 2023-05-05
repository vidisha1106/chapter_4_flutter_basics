import 'package:flutter/material.dart';

import '../../Reusable_Code/components/custom_text_button.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BottomSheet")),
      body: Center(
        child: CustomTextButton(
          title: 'Show BottomSheet',
          onPressed: () {
            showModalBottomSheet(
                context: context,
                elevation: 25,
                backgroundColor: const Color(0xffffccd5),
                isDismissible: true,
                shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(25), right: Radius.circular(25))),
                builder: (BuildContext context) {
                  return const Center(child: Text("This is your BottomSheet"));
                });
          },
        ),
      ),
    );
  }
}
