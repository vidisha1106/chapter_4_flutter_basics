import 'package:chapter_4_flutter_basics/drop_down_button.dart';
import 'package:chapter_4_flutter_basics/gesture_detector.dart';
import 'package:chapter_4_flutter_basics/icon_button_inkwell.dart';
import 'package:chapter_4_flutter_basics/main.dart';
import 'package:chapter_4_flutter_basics/material_outline_button.dart';
import 'package:chapter_4_flutter_basics/popup_menu_button.dart';
import 'package:chapter_4_flutter_basics/radio_button.dart';
import 'package:chapter_4_flutter_basics/radio_list_tile_button.dart';
import 'package:chapter_4_flutter_basics/text_elevated_button.dart';
import 'package:flutter/material.dart';
import 'floating_action_button.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  State<MyButtons> createState() => _MyButtons();
}

class _MyButtons extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Center(
        child: Wrap(
          children: [
            CustomElevatedButton(title: 'Text & Elevated Buttton', routeName: const MyTextElevatedButton(), width: 300, height: 65,),
            CustomElevatedButton(title: 'Material & Outline Button', routeName: const MyMaterialOutline(), width: 300, height: 65,),
            CustomElevatedButton(title: 'Icon Button & InkWell', routeName: const MyIconInkWell(), width: 300, height:65,),
            CustomElevatedButton(title: 'GestureDetector', routeName: const MyGestureDetector(),width: 300, height: 65,),
            CustomElevatedButton(title: 'DropDownButton', routeName: const MyDropDownButton(),width: 300, height: 65),
            CustomElevatedButton(title: 'RadioButton', routeName: const MyRadioButton(),width: 300, height: 65),
            CustomElevatedButton(title: 'RadioListTileButton', routeName: const MyRadioListTile(),width: 300, height: 65),
            CustomElevatedButton(title: 'PopUpMenuButtton', routeName: MyPopUpMenuButton(),width: 300, height: 65),
            CustomElevatedButton(
              title: 'FloatingActionButton',
              width: 300,height: 65,
              routeName: MyFloatingActionButton(),
            ),
            // CustomElevatedButton(title: 'Buttons', routeName: const MyButtons()),
          ],
        ),
      ),
     // backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
