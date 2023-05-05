import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/assets.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/assets_fonts.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/buttons_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/column_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/container_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/data_files.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/icon_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/image_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/textfield_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/media_query.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/placeholder_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/row_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/scaffold_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/widget_lifecycle.dart';
import 'package:flutter/material.dart';

import '../Model/basic_widget_class.dart';
import '../Reusable_Code/components/custom_elevated_button.dart';

class MyBasicWidgets extends StatefulWidget {
  const MyBasicWidgets({Key? key}) : super(key: key);

  @override
  State<MyBasicWidgets> createState() => _MyBasicWidgetsState();
}

class _MyBasicWidgetsState extends State<MyBasicWidgets> {
  List<BasicWidgets> listOfBasicWidgets = [
    BasicWidgets(
      title: 'AppBar',
      routeName: const MyAppBarWidget(),
    ),
    BasicWidgets(
      title: 'Column',
      routeName: const MyColumnWidget(),
    ),
    BasicWidgets(
      title: 'Container',
      width: 150,
      routeName: const MyContainer(),
    ),
    BasicWidgets(
      title: 'Buttons',
      routeName: const MyButtons(),
    ),
    BasicWidgets(
      title: 'Icon',
      routeName: const MyIconWidget(),
    ),
    BasicWidgets(
      title: 'Image',
      routeName: const MyImageWidget(),
    ),
    BasicWidgets(
      title: 'Placeholder',
      width: 150,
      routeName: const MyPlaceholder(),
    ),
    BasicWidgets(
      title: 'Row',
      routeName: const MyRowWidget(),
    ),
    BasicWidgets(
      title: 'Scaffold',
      routeName: const MyScaffold(),
    ),
    BasicWidgets(
      title: 'Text',
      routeName: const MyTextField(),
    ),
    BasicWidgets(
      title: 'TextField',
      width: 175,
      routeName: const MyTextField(),
    ),
    BasicWidgets(
      title: 'Widget LifeCycle',
      width: 200,
      routeName: const MyWidgetLifecycle(),
    ),
    BasicWidgets(
      title: 'MediaQuery',
      width: 150,
      routeName: const MyMediaQuery(),
    ),
    BasicWidgets(
      title: 'Assets',
      routeName: const MyAssets(),
    ),
    BasicWidgets(
      title: 'Fonts',
      routeName: const MyFonts(),
    ),
    BasicWidgets(
      title: 'Data Files',
      width: 125,
      routeName: const MyDataFiles(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic Widgets")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(
                  listOfBasicWidgets.length,
                  (index) {
                    return CustomElevatedButton(
                      title: listOfBasicWidgets[index].title,
                      routeName: listOfBasicWidgets[index].routeName,
                      height: 60,
                      width: listOfBasicWidgets[index].width,
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
