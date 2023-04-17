import 'package:chapter_4_flutter_basics/appbar_widget.dart';
import 'package:chapter_4_flutter_basics/column_widget.dart';
import 'package:chapter_4_flutter_basics/container_widget.dart';
import 'package:chapter_4_flutter_basics/buttons_widget.dart';
import 'package:chapter_4_flutter_basics/icon_widget.dart';
import 'package:chapter_4_flutter_basics/image_widget.dart';
import 'package:chapter_4_flutter_basics/row_widget.dart';
import 'package:chapter_4_flutter_basics/scaffold_widget.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
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
              CustomElevatedButton(title: 'AppBar', routeName: const MyAppBarWidget()),
              CustomElevatedButton(title: 'Column', routeName: const MyColumnWidget()),
              CustomElevatedButton(title: 'Scaffold', routeName: const MyScaffold()),
              CustomElevatedButton(title: 'Row', routeName: const MyRowWidget()),
              CustomElevatedButton(title: 'Text', routeName: const MyTextwidget()),
              CustomElevatedButton(title: 'Icon', routeName: const MyIconWidget()),
              CustomElevatedButton(title: 'Image', routeName: const MyImageWidget()),
              CustomElevatedButton(title: 'Container', routeName: const MyContainer()),
              CustomElevatedButton(title: 'Buttons', routeName: const MyButtons()),
            ],
          ),
        ),
      backgroundColor: const Color(0xff2b2b2b),
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  var title;
  var routeName;
  double width,height;

  CustomElevatedButton(
      {super.key, required this.title, required this.routeName, this.width = 111,this.height = 100});

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
            side: BorderSide(color: Color(0xffffccd5),width: 1),
            shadowColor: Colors.white,
            elevation: 05,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            padding: const EdgeInsets.all(10),
            fixedSize: Size(widget.width,widget.height),
            textStyle: const TextStyle(fontSize: 21, color: Colors.white)),
        child: Text(widget.title),
      ),
    );
  }
}
