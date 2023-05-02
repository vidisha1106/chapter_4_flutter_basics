import 'package:chapter_4_flutter_basics/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/assets.dart';
import 'package:chapter_4_flutter_basics/assets_fonts.dart';
import 'package:chapter_4_flutter_basics/buttons_widget.dart';
import 'package:chapter_4_flutter_basics/column_widget.dart';
import 'package:chapter_4_flutter_basics/container_widget.dart';
import 'package:chapter_4_flutter_basics/data_files.dart';
import 'package:chapter_4_flutter_basics/icon_widget.dart';
import 'package:chapter_4_flutter_basics/image_widget.dart';
import 'package:chapter_4_flutter_basics/main.dart';
import 'package:chapter_4_flutter_basics/media_query.dart';
import 'package:chapter_4_flutter_basics/placeholder_widget.dart';
import 'package:chapter_4_flutter_basics/row_widget.dart';
import 'package:chapter_4_flutter_basics/scaffold_widget.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:chapter_4_flutter_basics/textfield_widget.dart';
import 'package:chapter_4_flutter_basics/widget_lifecycle.dart';
import 'package:flutter/material.dart';

class MyBasicWidgets extends StatefulWidget {
  const MyBasicWidgets({Key? key}) : super(key: key);

  @override
  State<MyBasicWidgets> createState() => _MyBasicWidgetsState();
}

class _MyBasicWidgetsState extends State<MyBasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Basic Widgets", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.center,
                children: [
                  CustomElevatedButton(
                      title: 'AppBar', routeName: const MyAppBarWidget()),
                  CustomElevatedButton(
                      title: 'Column', routeName: const MyColumnWidget()),
                  CustomElevatedButton(
                      title: 'Container',
                      routeName: const MyContainer(),
                      width: 150),
                  CustomElevatedButton(
                      title: 'Buttons', routeName: const MyButtons()),
                  CustomElevatedButton(
                      title: 'Icon', routeName: const MyIconWidget()),
                  CustomElevatedButton(
                      title: 'Image', routeName: const MyImageWidget()),
                  CustomElevatedButton(
                      title: 'Placeholder',
                      routeName: const MyPlaceholder(),
                      width: 150),
                  CustomElevatedButton(
                      title: 'Row', routeName: const MyRowWidget()),
                  CustomElevatedButton(
                      title: 'Scaffold', routeName: const MyScaffold()),
                  CustomElevatedButton(
                      title: 'Text', routeName: const MyTextwidget()),
                  CustomElevatedButton(
                      title: 'TextField',
                      routeName: const MyTextField(),
                      width: 175),
                  CustomElevatedButton(
                    title: 'Widget Lifecycle',
                    routeName: MyWidgetLifecycle(),
                    width: 125,
                  ),
                  CustomElevatedButton(
                      title: 'MediaQuery',
                      routeName: const MyMediaQuery(),
                      width: 175),
                  CustomElevatedButton(
                    title: 'Assets',
                    routeName: MyAssets(),
                  ),
                  CustomElevatedButton(
                    title: 'Fonts',
                    routeName: MyFonts(),
                  ),
                  CustomElevatedButton(
                    title: 'Data Files',
                    routeName: MyDataFiles(),
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
