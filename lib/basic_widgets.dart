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
      appBar: AppBar(title: Text("Basic Widgets")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.center,
                children: [
                  CustomElevatedButton(
                      title: 'AppBar', routeName: const MyAppBarWidget(),height: 60),
                  CustomElevatedButton(
                      title: 'Column', routeName: const MyColumnWidget(),height: 60),
                  CustomElevatedButton(
                      title: 'Container',
                      routeName: const MyContainer(),height: 60,
                      width: 150),
                  CustomElevatedButton(
                      title: 'Buttons', routeName: const MyButtons(),height: 60),
                  CustomElevatedButton(
                      title: 'Icon', routeName: const MyIconWidget(),height: 60),
                  CustomElevatedButton(
                      title: 'Image', routeName: const MyImageWidget(),height: 60),
                  CustomElevatedButton(
                      title: 'Placeholder',
                      routeName: const MyPlaceholder(),
                      width: 150,height: 60),
                  CustomElevatedButton(
                      title: 'Row', routeName: const MyRowWidget(),height: 60),
                  CustomElevatedButton(
                      title: 'Scaffold', routeName: const MyScaffold(),height: 60),
                  CustomElevatedButton(
                      title: 'Text', routeName: const MyTextwidget(),height: 60),
                  CustomElevatedButton(
                      title: 'TextField',
                      routeName: const MyTextField(),height: 60,
                      width: 175),
                  CustomElevatedButton(
                    title: 'Widget Lifecycle',
                    routeName: MyWidgetLifecycle(),height: 60,
                    width: 200,
                  ),
                  CustomElevatedButton(
                      title: 'MediaQuery',
                      routeName: const MyMediaQuery(),height: 60,
                      width: 150 ),
                  CustomElevatedButton(
                    title: 'Assets',
                    routeName: MyAssets(),height: 60,
                  ),
                  CustomElevatedButton(
                    title: 'Fonts',
                    routeName: MyFonts(),height: 60,
                  ),
                  CustomElevatedButton(
                    title: 'Data Files',
                    routeName: MyDataFiles(),height: 60,width: 125,
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
