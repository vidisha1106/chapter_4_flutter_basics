import 'package:chapter_4_flutter_basics/Basic_Widgets/widgets/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/Basic_Widgets/basic_widgets.dart';
import 'package:chapter_4_flutter_basics/Builders/builders.dart';
import 'package:chapter_4_flutter_basics/Cupertino_Widgets/cupertino.dart';
import 'package:chapter_4_flutter_basics/Helper_Widgets/helper_widgets.dart';
import 'package:chapter_4_flutter_basics/Material_Widgets/material_widgets.dart';
import 'package:chapter_4_flutter_basics/Gesture_Detector/pinch_gesture_detector.dart';
import 'package:chapter_4_flutter_basics/reusable_code/theme_constants.dart';
import 'package:chapter_4_flutter_basics/Scrollable_Widgets/scrollable_widgets.dart';
import 'package:flutter/material.dart';

import 'Model/home_page_class.dart';
import 'Reusable_Code/components/custom_elevated_button.dart';

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
        '/home': (context) => const MyHomePage(),
        '/appbar': (context) => const MyAppBarWidget(),
      },
      locale: const Locale('en', 'US'),
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
  List<HomePageWidgets> widgets = [
    HomePageWidgets(
      title: 'Basic Widgets',
      routeName: const MyBasicWidgets(),
    ),
    HomePageWidgets(
      title: 'Material Widgets',
      routeName: const MyMaterialWidgets(),
    ),
    HomePageWidgets(
      title: 'Cupertino Widgets',
      routeName: const MyCupertino(),
    ),
    HomePageWidgets(
      title: 'Builders',
      routeName: const MyBuilders(),
    ),
    HomePageWidgets(
      title: 'Scrollable Widgets',
      routeName: const MyScrollableWidgets(),
    ),
    HomePageWidgets(
      title: 'Helper Widgets',
      routeName: const MyHelperWidgets(),
    ),
    HomePageWidgets(
      title: 'Gesture Detector',
      routeName: const PinchGestureDetector(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter CookBook")),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 25,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  widgets.length,
                  (index) {
                    return CustomElevatedButton(
                      title: widgets[index].title,
                      routeName: widgets[index].routeName,
                    );
                  },
                )),
          ),
        ),
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
