import 'package:chapter_4_flutter_basics/Material_Widgets/App_Structure_And_Navigation/bottom_navigation_bar.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/image_widget.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Input_And_Selections/radio_button.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Dialogs_Alerts_Panels/simple_dialog.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Input_And_Selections/slider.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Layout/stepper.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Input_And_Selections/switch.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/App_Structure_And_Navigation/tab_bar.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/App_Structure_And_Navigation/tab_page_selector.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/Information_Displays/tooltip.dart';
import 'package:chapter_4_flutter_basics/Model/material_widget_class.dart';
import 'package:flutter/material.dart';
import '../Basic_Widgets/widgets/icon_widget.dart';
import '../Basic_Widgets/widgets/textfield_widget.dart';
import '../Reusable_Code/components/custom_elevated_button.dart';
import 'App_Structure_And_Navigation/sliver_app_bar.dart';
import 'Dialogs_Alerts_Panels/alert_dialog.dart';
import 'Dialogs_Alerts_Panels/bottom_sheet.dart';
import 'Information_Displays/card.dart';
import 'Input_And_Selections/checkbox.dart';
import 'Information_Displays/chip.dart';
import 'Information_Displays/circular_progress_indicator.dart';
import 'Information_Displays/data_table.dart';
import 'Input_And_Selections/date_time_picker.dart';
import 'Input_And_Selections/radio_list_tile_button.dart';
import 'Layout/divider.dart';
import 'App_Structure_And_Navigation/drawer.dart';
import 'Dialogs_Alerts_Panels/expansion_panel.dart';
import 'Information_Displays/grid_view.dart';

class MyMaterialWidgets extends StatefulWidget {
  const MyMaterialWidgets({Key? key}) : super(key: key);

  @override
  State<MyMaterialWidgets> createState() => _MyMaterialWidgetsState();
}

class _MyMaterialWidgetsState extends State<MyMaterialWidgets> {
  List<MaterialWidgets> appStructureNavigation = [
    MaterialWidgets(
        title: 'BottomNavigationBar',
        routeName: const MyBottomNavigationBar(),
        width: 250),
    MaterialWidgets(title: 'Drawer', routeName: const MyDrawer()),
    MaterialWidgets(title: 'TabBar', routeName: const MyTabBar()),
    MaterialWidgets(
        title: 'TabPageSelector', routeName: const MyTabPageSelector(), width: 200),
    MaterialWidgets(
        title: 'SliverAppBar', routeName: const MySliverAppBar(), width: 150)
  ];

  List<MaterialWidgets> inputSelections = [
    MaterialWidgets(title: 'CheckBox', routeName: const MyCheckBox(), width: 125),
    MaterialWidgets(
      title: 'Date & Time Picker',
      routeName: const MyDateTimePicker(),
      width: 200,
    ),
    MaterialWidgets(
      title: 'Slider',
      routeName: const MySlider(),
      width: 100,
    ),
    MaterialWidgets(
      title: 'Switch',
      routeName: const MySwitch(),
      width: 100,
    ),
    MaterialWidgets(
      title: 'Radio',
      routeName: const MyRadioButton(),
    ),
    MaterialWidgets(
      title: 'RadioListTile',
      routeName: const MyRadioListTile(),
      width: 150,
    ),
    MaterialWidgets(title: 'TextField', routeName: const MyTextField())
  ];

  List<MaterialWidgets> dialogAlertPanel = [
    MaterialWidgets(
        title: 'AlertDialog', routeName: const MyAlertDialog(), width: 150),
    MaterialWidgets(
        title: 'BottomSheet', routeName: const MyBottomSheet(), width: 150),
    MaterialWidgets(
        title: 'ExpansionPanel', routeName: const MyExpansionPanel(), width: 175),
    MaterialWidgets(
        title: 'SimpleDialog', routeName: const MySimpleDialog(), width: 150),
  ];

  List<MaterialWidgets> informationDisplays = [
    MaterialWidgets(
      title: 'Card',
      width: 75,
      routeName: const MyCard(),
    ),
    MaterialWidgets(
      title: 'Chip',
      width: 75,
      routeName: const MyChip(),
    ),
    MaterialWidgets(
      title: 'ProgressIndicator',
      width: 200,
      routeName: const MyCircularProgressIndicator(),
    ),
    MaterialWidgets(
      title: 'DataTable',
      width: 125,
      routeName: const MyDataTable(),
    ),
    MaterialWidgets(
      title: 'GridView',
      routeName: const MyGridView(),
    ),
    MaterialWidgets(
      title: 'Icon',
      routeName: const MyIconWidget(),
    ),
    MaterialWidgets(
      title: 'Image',
      routeName: const MyImageWidget(),
    ),
    MaterialWidgets(
      title: 'ToolTip',
      routeName: const MyToolTip(),
    ),
  ];

  List<MaterialWidgets> layout = [
    MaterialWidgets(
      title: 'Divider',
      routeName: const MyDivider(),
    ),
    MaterialWidgets(
      title: 'Stepper',
      routeName: const MyStepper(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Material Widgets")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 25),
                child: Text("App Structure & Navigation",
                    style: TextStyle(
                      color: Color(0xffff4d6d),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center),
              ),
              Wrap(
                  alignment: WrapAlignment.center,
                  children: List.generate(
                    appStructureNavigation.length,
                    (index) {
                      return CustomElevatedButton(
                          title: appStructureNavigation[index].title,
                          width: appStructureNavigation[index].width,
                          height: 60,
                          routeName: appStructureNavigation[index].routeName);
                    },
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 25),
                child: Text("Input & Selections",
                    style: TextStyle(
                      color: Color(0xffff4d6d),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(inputSelections.length, (index) {
                  return CustomElevatedButton(
                    title: inputSelections[index].title,
                    height: 60,
                    width: inputSelections[index].width,
                    routeName: inputSelections[index].routeName,
                  );
                }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 25),
                child: Text("Dialogs, Alerts & Panels",
                    style: TextStyle(
                      color: Color(0xffff4d6d),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(dialogAlertPanel.length, (index) {
                  return CustomElevatedButton(
                    title: dialogAlertPanel[index].title,
                    routeName: dialogAlertPanel[index].routeName,
                    width: dialogAlertPanel[index].width,
                    height: 60,
                  );
                }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 25),
                child: Text("Information Displays",
                    style: TextStyle(
                      color: Color(0xffff4d6d),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(
                  informationDisplays.length,
                  (index) {
                    return CustomElevatedButton(
                      title: informationDisplays[index].title,
                      height: 60,
                      width: informationDisplays[index].width,
                      routeName: informationDisplays[index].routeName,
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 25),
                child: Text("Layout",
                    style: TextStyle(
                      color: Color(0xffff4d6d),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(layout.length,(index) {
                  return CustomElevatedButton(
                    title: layout[index].title,
                    routeName: layout[index].routeName,height: 60,
                  );
                },)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
