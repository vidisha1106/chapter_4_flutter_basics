import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet")),
      body: Center(
        child: CustomTextButton(
          title: 'Show BottomSheet',
          onPressed: () {
            showModalBottomSheet(
                context: context,
                elevation: 25,
                backgroundColor: Color(0xffffccd5),
                isDismissible: true,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(25), right: Radius.circular(25))),
                builder: (BuildContext context) {
                  return Container(
                    child: Center(child: Text("This is your bottomsheet")),
                  );
                });
          },
        ),
      ),
    );
  }
}
