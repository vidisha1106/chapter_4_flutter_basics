import 'package:chapter_4_flutter_basics/MySliverAppBar.dart';
import 'package:chapter_4_flutter_basics/alert_dialog.dart';
import 'package:chapter_4_flutter_basics/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/assets.dart';
import 'package:chapter_4_flutter_basics/assets_fonts.dart';
import 'package:chapter_4_flutter_basics/basic_widgets.dart';
import 'package:chapter_4_flutter_basics/bottom_navigation_bar.dart';
import 'package:chapter_4_flutter_basics/bottom_sheet.dart';
import 'package:chapter_4_flutter_basics/builders.dart';
import 'package:chapter_4_flutter_basics/card.dart';
import 'package:chapter_4_flutter_basics/chip.dart';
import 'package:chapter_4_flutter_basics/circular_progress_indicator.dart';
import 'package:chapter_4_flutter_basics/column_widget.dart';
import 'package:chapter_4_flutter_basics/container_widget.dart';
import 'package:chapter_4_flutter_basics/buttons_widget.dart';
import 'package:chapter_4_flutter_basics/cupertino.dart';
import 'package:chapter_4_flutter_basics/data_files.dart';
import 'package:chapter_4_flutter_basics/data_table.dart';
import 'package:chapter_4_flutter_basics/date_time_picker.dart';
import 'package:chapter_4_flutter_basics/divider.dart';
import 'package:chapter_4_flutter_basics/drawer.dart';
import 'package:chapter_4_flutter_basics/expansion_panel.dart';
import 'package:chapter_4_flutter_basics/floating_action_button.dart';
import 'package:chapter_4_flutter_basics/grid_view.dart';
import 'package:chapter_4_flutter_basics/icon_widget.dart';
import 'package:chapter_4_flutter_basics/image_widget.dart';
import 'package:chapter_4_flutter_basics/listview.dart';
import 'package:chapter_4_flutter_basics/material_widgets.dart';
import 'package:chapter_4_flutter_basics/media_query.dart';
import 'package:chapter_4_flutter_basics/pageview.dart';
import 'package:chapter_4_flutter_basics/placeholder_widget.dart';
import 'package:chapter_4_flutter_basics/popup_menu_button.dart';
import 'package:chapter_4_flutter_basics/reusable_code/theme_constants.dart';
import 'package:chapter_4_flutter_basics/row_widget.dart';
import 'package:chapter_4_flutter_basics/scaffold_widget.dart';
import 'package:chapter_4_flutter_basics/scrollview.dart';
import 'package:chapter_4_flutter_basics/simple_dialog.dart';
import 'package:chapter_4_flutter_basics/slider.dart';
import 'package:chapter_4_flutter_basics/stepper.dart';
import 'package:chapter_4_flutter_basics/switch.dart';
import 'package:chapter_4_flutter_basics/tab_bar.dart';
import 'package:chapter_4_flutter_basics/tab_page_selector.dart';
import 'package:chapter_4_flutter_basics/table.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:chapter_4_flutter_basics/textfield_widget.dart';
import 'package:chapter_4_flutter_basics/tooltip.dart';
import 'package:chapter_4_flutter_basics/widget_lifecycle.dart';
import 'package:flutter/material.dart';

import 'checkbox.dart';
import 'popup_menu_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/appbar': (context) => MyAppBarWidget(),
      },
      locale: Locale('en', 'US'),
      /* supportedLocales: [
        Locale('fr','FR'),
        Locale('es','ES')
      ],*/
      themeMode: ThemeMode.system,
      title: 'Flutter App',
      // home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Flutter CookBook",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25, top: 25),
            child: Wrap(
              children: [
                CustomElevatedButton(
                  title: 'Basic Widgets',
                  height: 100,
                  width: 250,
                  routeName: MyBasicWidgets(),
                ),
                CustomElevatedButton(
                  title: 'Material Widgets',
                  height: 100,
                  width: 250,
                  routeName: MyMaterialWidgets(),
                ),
                CustomElevatedButton(
                  title: 'CheckBox',
                  width: 125,
                  routeName: MyCheckBox(),
                ),
                CustomElevatedButton(
                  title: 'Slider',
                  routeName: MySlider(),
                ),
                CustomElevatedButton(
                  title: 'Switch',
                  routeName: MySwitch(),
                ),
                CustomElevatedButton(
                  title: 'Date & Time Picker',
                  width: 200,
                  routeName: MyDateTimePicker(),
                ),
                CustomElevatedButton(
                  title: 'AlertDialog',
                  width: 150,
                  routeName: MyAlertDialog(),
                ),
                CustomElevatedButton(
                  title: 'SimpleDialog',
                  width: 150,
                  routeName: MySimpleDialog(),
                ),
                CustomElevatedButton(
                  title: 'BottomSheet',
                  width: 150,
                  routeName: MyBottomSheet(),
                ),
                CustomElevatedButton(
                  title: 'Expansion Panel',
                  width: 150,
                  routeName: MyExpansionPanel(),
                ),
                CustomElevatedButton(
                  title: 'Card',
                  routeName: MyCard(),
                ),
                CustomElevatedButton(
                  title: 'Chip',
                  routeName: MyChip(),
                ),
                CustomElevatedButton(
                  title: 'CircularProgressIndicator',width: 300,
                  routeName: MyCircularProgressIndicator(),
                ),
                CustomElevatedButton(
                  title: 'DataTable',
                  width: 125,
                  routeName: MyDataTable(),
                ),
                CustomElevatedButton(
                  title: 'GridView',
                  routeName: MyGridView(),
                ),
                CustomElevatedButton(
                  title: 'ToolTip',
                  routeName: MyToolTip(),
                ),
                CustomElevatedButton(
                  title: 'Divider',
                  routeName: MyDivider(),
                ),
                CustomElevatedButton(
                  title: 'Stepper',
                  routeName: MyStepper(),
                ),
                CustomElevatedButton(
                  title: 'Cupertino Widgets',
                  width: 150,
                  routeName: MyCupertino(),
                ),
                CustomElevatedButton(
                  title: 'Builders',
                  routeName: MyBuilders(),
                ),
                CustomElevatedButton(
                  title: 'ListView',
                  routeName: MyListView(),
                ),
                CustomElevatedButton(
                  title: 'Table',
                  routeName: MyTable(),
                ),
                CustomElevatedButton(
                  title: 'PageView',width: 125,
                  routeName: MyPageView(),
                ),
                CustomElevatedButton(
                  title: 'ScrollView',width: 125,
                  routeName: MyScrollView(),
                ),
              ],
            ),
          ),
        ),
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  var title;
  Widget? routeName;
  void Function()? onPressed;
  double width, height;

  CustomElevatedButton(
      {super.key,
      required this.title,
      this.routeName,
      this.onPressed,
      this.width = 111,
      this.height = 75});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: routeName == null
            ? onPressed
            : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => routeName!,
                  ),
                );
                //context.dependOnInheritedWidgetOfExactType(aspect: routeName);
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffff4d6d),
          side: BorderSide(color: Color(0xffffccd5), width: 1),
          shadowColor: Colors.white,
          elevation: 05,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.all(10),
          fixedSize: Size(width, height),
          // textStyle: const TextStyle(
          //   fontSize: 21,
          //   color: Colors.white,
          // ),
        ),
        child: Text(title, textAlign: TextAlign.center),
      ),
    );
  }
}
