import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/Buttons/drop_down_button.dart';
import 'package:chapter_4_flutter_basics/Gesture_Detector/gesture_detector.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/Buttons/icon_button_inkwell.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/Buttons/material_outline_button.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/Buttons/popup_menu_button.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Input_And_Selections/radio_button.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/Buttons/text_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../Material_Widgets/Input_And_Selections/radio_list_tile_button.dart';
import '../../Reusable_Code/components/custom_elevated_button.dart';
import 'Buttons/floating_action_button.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  State<MyButtons> createState() => _MyButtons();
}

class _MyButtons extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: Center(
        child: Wrap(
          children: const [
            CustomElevatedButton(title: 'Text & Elevated Buttton', routeName: MyTextElevatedButton(), width: 300, height: 65,),
            CustomElevatedButton(title: 'Material & Outline Button', routeName: MyMaterialOutline(), width: 300, height: 65,),
            CustomElevatedButton(title: 'Icon Button & InkWell', routeName: MyIconInkWell(), width: 300, height:65,),
            CustomElevatedButton(title: 'GestureDetector', routeName: MyGestureDetector(),width: 300, height: 65,),
            CustomElevatedButton(title: 'DropDownButton', routeName: MyDropDownButton(),width: 300, height: 65),
            CustomElevatedButton(title: 'RadioButton', routeName: MyRadioButton(),width: 300, height: 65),
            CustomElevatedButton(title: 'RadioListTileButton', routeName: MyRadioListTile(),width: 300, height: 65),
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
