import 'package:chapter_4_flutter_basics/MySliverAppBar.dart';
import 'package:chapter_4_flutter_basics/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/assets.dart';
import 'package:chapter_4_flutter_basics/assets_fonts.dart';
import 'package:chapter_4_flutter_basics/bottom_navigation_bar.dart';
import 'package:chapter_4_flutter_basics/column_widget.dart';
import 'package:chapter_4_flutter_basics/container_widget.dart';
import 'package:chapter_4_flutter_basics/buttons_widget.dart';
import 'package:chapter_4_flutter_basics/data_files.dart';
import 'package:chapter_4_flutter_basics/drawer.dart';
import 'package:chapter_4_flutter_basics/icon_widget.dart';
import 'package:chapter_4_flutter_basics/image_widget.dart';
import 'package:chapter_4_flutter_basics/media_query.dart';
import 'package:chapter_4_flutter_basics/placeholder_widget.dart';
import 'package:chapter_4_flutter_basics/popup_menu_button.dart';
import 'package:chapter_4_flutter_basics/reusable_code/theme_constants.dart';
import 'package:chapter_4_flutter_basics/row_widget.dart';
import 'package:chapter_4_flutter_basics/scaffold_widget.dart';
import 'package:chapter_4_flutter_basics/tab_bar.dart';
import 'package:chapter_4_flutter_basics/tab_page_selector.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:chapter_4_flutter_basics/textfield_widget.dart';
import 'package:chapter_4_flutter_basics/widget_lifecycle.dart';
import 'package:flutter/material.dart';

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
      /*ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink[900],
        fontFamily: 'Chivo',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffff4d6d), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              backgroundColor: const Color(0xfffff0f3),
              foregroundColor: const Color(0xffff4d6d),
              textStyle: const TextStyle(fontSize: 17, fontFamily: 'Chivo')),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontFamily: 'Chivo',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),*/
      darkTheme: ThemeClass.darkTheme,
      /*ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.pink[900],
        fontFamily: 'DynaPuff',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xfffff0f3), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              backgroundColor: const Color(0xffff4d6d),
              foregroundColor: const Color(0xfffff0f3),
              textStyle: const TextStyle(fontSize: 17, fontFamily: 'DynaPuff')),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontFamily: 'DynaPuff',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),*/
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
                    title: 'AppBar', routeName: const MyAppBarWidget()),
                CustomElevatedButton(
                    title: 'Column', routeName: const MyColumnWidget()),
                CustomElevatedButton(
                    title: 'Scaffold', routeName: const MyScaffold()),
                CustomElevatedButton(
                    title: 'Row', routeName: const MyRowWidget()),
                CustomElevatedButton(
                    title: 'Text', routeName: const MyTextwidget()),
                CustomElevatedButton(
                    title: 'Icon', routeName: const MyIconWidget()),
                CustomElevatedButton(
                    title: 'Image', routeName: const MyImageWidget()),
                CustomElevatedButton(
                    title: 'Container',
                    routeName: const MyContainer(),
                    width: 175),
                CustomElevatedButton(
                    title: 'Buttons', routeName: const MyButtons()),
                CustomElevatedButton(
                    title: 'Placeholder',
                    routeName: const MyPlaceholder(),
                    width: 175),
                CustomElevatedButton(
                    title: 'TextField',
                    routeName: const MyTextField(),
                    width: 175),
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
                CustomElevatedButton(
                  title: 'Widget Lifecycle',
                  routeName: MyWidgetLifecycle(),width: 125,
                ),
                CustomElevatedButton(
                  title: 'BottomNavigationBar',
                  routeName: MyBottomNavigationBar(),width: 250,
                ),
                CustomElevatedButton(
                  title: 'Drawer',
                  routeName: MyDrawer(),
                ),
                CustomElevatedButton(
                  title: 'TabBar',
                  routeName: MyTabBar(),
                ),
                CustomElevatedButton(
                  title: 'TabPageSelector',
                  routeName: MyTabPageSelector(),
                ),
                CustomElevatedButton(
                  title: 'SliverAppBar',width: 150,
                  routeName: MySliverAppBar(),
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
      this.height = 100});

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
