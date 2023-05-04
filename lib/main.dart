import 'package:chapter_4_flutter_basics/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/basic_widgets.dart';
import 'package:chapter_4_flutter_basics/builders.dart';
import 'package:chapter_4_flutter_basics/cupertino.dart';
import 'package:chapter_4_flutter_basics/helper_widgets.dart';
import 'package:chapter_4_flutter_basics/material_widgets.dart';
import 'package:chapter_4_flutter_basics/pinch_gesture_detector.dart';
import 'package:chapter_4_flutter_basics/reusable_code/theme_constants.dart';
import 'package:chapter_4_flutter_basics/scrollable_widgets.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text("Flutter CookBook")),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomElevatedButton(
                  title: 'Basic Widgets',
                  routeName: MyBasicWidgets(),
                ),
                CustomElevatedButton(
                  title: 'Material Widgets',
                  routeName: MyMaterialWidgets(),
                ),
                CustomElevatedButton(
                  title: 'Cupertino Widgets',
                  routeName: MyCupertino(),
                ),
                CustomElevatedButton(
                  title: 'Builders',
                  routeName: MyBuilders(),
                ),
                CustomElevatedButton(
                  title: 'Scrollable Widgets',
                  routeName: MyScrollableWidgets(),
                ),
                CustomElevatedButton(
                  title: 'Helper Widgets',
                  routeName: MyHelperWidgets(),
                ),
                CustomElevatedButton(
                  title: 'Gesture Detector',
                  routeName: PinchGestureDetector(),
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
