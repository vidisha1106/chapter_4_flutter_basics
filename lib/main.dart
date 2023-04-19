import 'package:chapter_4_flutter_basics/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/column_widget.dart';
import 'package:chapter_4_flutter_basics/container_widget.dart';
import 'package:chapter_4_flutter_basics/buttons_widget.dart';
import 'package:chapter_4_flutter_basics/icon_widget.dart';
import 'package:chapter_4_flutter_basics/image_widget.dart';
import 'package:chapter_4_flutter_basics/placeholder_widget.dart';
import 'package:chapter_4_flutter_basics/row_widget.dart';
import 'package:chapter_4_flutter_basics/scaffold_widget.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:chapter_4_flutter_basics/textfield_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.pink[900],
          fontFamily: 'Chivo',
          textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffff4d6d), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              backgroundColor: const Color(0xfffff0f3),
              foregroundColor: const Color(0xffff4d6d),
              textStyle: const TextStyle(fontSize: 17,fontFamily: 'Chivo')),),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle:  const TextStyle(
                fontFamily: 'Chivo',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.pink[900],
        fontFamily: 'DynaPuff',
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Color(0xfffff0f3), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            backgroundColor: const Color(0xffff4d6d),
            foregroundColor: const Color(0xfffff0f3),
            textStyle: const TextStyle(fontSize: 17,fontFamily: 'DynaPuff')),),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontFamily: 'DynaPuff',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/appbar':(context) => MyAppBarWidget(),
      },
      locale: Locale('en','US'),
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
        child: Wrap(
          children: [
            CustomElevatedButton(
                title: 'AppBar', routeName: const MyAppBarWidget()),
            CustomElevatedButton(
                title: 'Column', routeName: const MyColumnWidget()),
            CustomElevatedButton(
                title: 'Scaffold', routeName: const MyScaffold()),
            CustomElevatedButton(title: 'Row', routeName: const MyRowWidget()),
            CustomElevatedButton(
                title: 'Text', routeName: const MyTextwidget()),
            CustomElevatedButton(
                title: 'Icon', routeName: const MyIconWidget()),
            CustomElevatedButton(
                title: 'Image', routeName: const MyImageWidget()),
            CustomElevatedButton(
                title: 'Container', routeName: const MyContainer(), width: 175),
            CustomElevatedButton(
                title: 'Buttons', routeName: const MyButtons()),
            CustomElevatedButton(
                title: 'Placeholder', routeName: const MyPlaceholder(),width: 175),
            CustomElevatedButton(
                title: 'TextField', routeName: const MyTextField(),width: 175),
          ],
        ),
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  var title;
  var routeName;
  double width, height;

  CustomElevatedButton(
      {super.key,
      required this.title,
      required this.routeName,
      this.width = 111,
      this.height = 100});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.routeName,
              ));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffff4d6d),
          side: BorderSide(color: Color(0xffffccd5), width: 1),
          shadowColor: Colors.white,
          elevation: 05,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.all(10),
          fixedSize: Size(widget.width, widget.height),
          // textStyle: const TextStyle(
          //   fontSize: 21,
          //   color: Colors.white,
          // ),
        ),
        child: Text(widget.title),
      ),
    );
  }
}
