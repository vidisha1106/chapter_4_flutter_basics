import 'package:chapter_4_flutter_basics/bottom_navigation_bar.dart';
import 'package:chapter_4_flutter_basics/icon_widget.dart';
import 'package:chapter_4_flutter_basics/image_widget.dart';
import 'package:chapter_4_flutter_basics/radio_button.dart';
import 'package:chapter_4_flutter_basics/radio_list_tile_button.dart';
import 'package:chapter_4_flutter_basics/simple_dialog.dart';
import 'package:chapter_4_flutter_basics/slider.dart';
import 'package:chapter_4_flutter_basics/stepper.dart';
import 'package:chapter_4_flutter_basics/switch.dart';
import 'package:chapter_4_flutter_basics/tab_bar.dart';
import 'package:chapter_4_flutter_basics/tab_page_selector.dart';
import 'package:chapter_4_flutter_basics/textfield_widget.dart';
import 'package:chapter_4_flutter_basics/tooltip.dart';
import 'package:flutter/material.dart';
import 'MySliverAppBar.dart';
import 'alert_dialog.dart';
import 'bottom_sheet.dart';
import 'card.dart';
import 'checkbox.dart';
import 'chip.dart';
import 'circular_progress_indicator.dart';
import 'data_table.dart';
import 'date_time_picker.dart';
import 'divider.dart';
import 'drawer.dart';
import 'expansion_panel.dart';
import 'grid_view.dart';
import 'main.dart';

class MyMaterialWidgets extends StatefulWidget {
  const MyMaterialWidgets({Key? key}) : super(key: key);

  @override
  State<MyMaterialWidgets> createState() => _MyMaterialWidgetsState();
}

class _MyMaterialWidgetsState extends State<MyMaterialWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Material Widgets")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
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
                children: [
                  CustomElevatedButton(
                    title: 'BottomNavigationBar',
                    routeName: MyBottomNavigationBar(),
                    width: 250,
                    height: 60,
                  ),
                  CustomElevatedButton(
                    title: 'Drawer',
                    height: 60,
                    routeName: MyDrawer(),
                  ),
                  CustomElevatedButton(
                    title: 'TabBar',
                    height: 60,
                    routeName: MyTabBar(),
                  ),
                  CustomElevatedButton(
                    title: 'TabPageSelector',
                    routeName: MyTabPageSelector(),
                  ),
                  CustomElevatedButton(
                    title: 'SliverAppBar',
                    width: 150,
                    height: 60,
                    routeName: MySliverAppBar(),
                  ),
                ],
              ),
              Padding(
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
                children: [
                  CustomElevatedButton(
                    title: 'CheckBox',
                    width: 125,
                    height: 60,
                    routeName: MyCheckBox(),
                  ),
                  CustomElevatedButton(
                    title: 'Date & Time Picker',
                    width: 150,
                    routeName: MyDateTimePicker(),
                  ),
                  CustomElevatedButton(
                    title: 'Slider',
                    width: 100,
                    height: 60,
                    routeName: MySlider(),
                  ),
                  CustomElevatedButton(
                    title: 'Switch',
                    width: 100,
                    height: 60,
                    routeName: MySwitch(),
                  ),
                  CustomElevatedButton(
                    title: 'Radio',
                    height: 60,
                    routeName: MyRadioButton(),
                  ),
                  CustomElevatedButton(
                    title: 'RadioListTile',
                    width: 150,
                    height: 60,
                    routeName: MyRadioListTile(),
                  ),
                  CustomElevatedButton(
                    title: 'TextField',
                    height: 60,
                    routeName: MyTextField(),
                  ),
                ],
              ),
              Padding(
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
                children: [
                  CustomElevatedButton(
                    title: 'AlertDialog',
                    width: 150,
                    height: 60,
                    routeName: MyAlertDialog(),
                  ),
                  CustomElevatedButton(
                    title: 'BottomSheet',
                    width: 150,
                    height: 60,
                    routeName: MyBottomSheet(),
                  ),
                  CustomElevatedButton(
                    title: 'Expansion Panel',
                    width: 200,
                    height: 60,
                    routeName: MyExpansionPanel(),
                  ),
                  CustomElevatedButton(
                    title: 'SimpleDialog',
                    width: 150,
                    height: 60,
                    routeName: MySimpleDialog(),
                  ),
                ],
              ),
              Padding(
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
                children: [
                  CustomElevatedButton(
                    title: 'Card',
                    height: 60,
                    width: 75,
                    routeName: MyCard(),
                  ),
                  CustomElevatedButton(
                    title: 'Chip',
                    height: 60,
                    width: 75,
                    routeName: MyChip(),
                  ),
                  CustomElevatedButton(
                    title: 'ProgressIndicator',
                    height: 60,
                    width: 200,
                    routeName: MyCircularProgressIndicator(),
                  ),
                  CustomElevatedButton(
                    title: 'DataTable',
                    height: 60,
                    width: 125,
                    routeName: MyDataTable(),
                  ),
                  CustomElevatedButton(
                    title: 'GridView',
                    height: 60,
                    routeName: MyGridView(),
                  ),
                  CustomElevatedButton(
                    title: 'Icon',
                    height: 60,
                    routeName: MyIconWidget(),
                  ),
                  CustomElevatedButton(
                    title: 'Image',
                    height: 60,
                    routeName: MyImageWidget(),
                  ),
                  CustomElevatedButton(
                    title: 'ToolTip',
                    height: 60,
                    routeName: MyToolTip(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50,bottom: 25),
                child: Text("Layout",
                    style: TextStyle(
                      color: Color(0xffff4d6d),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  CustomElevatedButton(
                    title: 'Divider',
                    routeName: MyDivider(),
                  ),
                  CustomElevatedButton(
                    title: 'Stepper',
                    routeName: MyStepper(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
