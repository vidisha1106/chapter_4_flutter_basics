import 'package:chapter_4_flutter_basics/assets_images.dart';
import 'package:flutter/material.dart';

class MyAppBarWidget extends StatefulWidget {
  const MyAppBarWidget({Key? key}) : super(key: key);

  @override
  State<MyAppBarWidget> createState() => _MyAppBarWidgetState();
}

class _MyAppBarWidgetState extends State<MyAppBarWidget> {
  List<String> listItem = [
    'Background',
    'Shape',
    'Leading',
    'Title',
    'Center Title',
    'Action Buttons',
    'Elevation',
    'AppBar Height'
  ];

  bool appbarBackground = false;
  bool appbarShape = false;
  bool appbarLeading = false;
  bool appbarTitle = false;
  bool appbarCenterTitle = false;
  bool appbarActions = false;
  bool appbarElevation = false;
  bool appbarHeight = false;

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: appbarActions
            ? const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.thumb_up_outlined,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.settings),
                ),
              ]
            : null,
        flexibleSpace: appbarBackground
            ? Image.asset(Images.appbar, fit: BoxFit.fill)
            : null,
        backgroundColor: const Color(0xffff4d6d),
        actionsIconTheme: const IconThemeData(size: 25, color: Colors.white),
        leading: appbarLeading
            ? const Icon(
                Icons.menu,
                size: 25,
            color: Colors.white
              )
            : null,
        leadingWidth: 60,
        shadowColor: Color(0xffff4d6d),
        elevation: appbarElevation ? 50 : null,
        shape: appbarShape
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)))
            : null,
        title: appbarTitle
            ? const Text(
                "AppBar",
                style: TextStyle(fontSize: 25,color: Colors.white)
              )
            : null,
        toolbarHeight: appbarHeight ? 100 : null,
        centerTitle: appbarCenterTitle ? true : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
                child: Text(
                  "Wanna have some fun with AppBar ? 😉",
                  style: TextStyle(fontSize: 20, color: Color(0xffff4d6d)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                child: DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.modulate,
                    color: const Color(0xfff8bbd0),
                    border:
                        Border.all(color: const Color(0xffff4d6d), width: 3),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton<String>(
                      items: listItem.map((String dropdownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropdownStringItem,
                          child: Text(dropdownStringItem),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                          if (dropdownValue == listItem[0]) {
                            appbarBackground = !appbarBackground;
                          } else if (dropdownValue == listItem[1]) {
                            appbarShape = !appbarShape;
                          } else if (dropdownValue == listItem[2]) {
                            appbarLeading = !appbarLeading;
                          } else if (dropdownValue == listItem[3]) {
                            appbarTitle = !appbarTitle;
                          } else if (dropdownValue == listItem[4]) {
                            appbarCenterTitle = !appbarCenterTitle;
                          } else if (dropdownValue == listItem[5]) {
                            appbarActions = !appbarActions;
                          } else if (dropdownValue == listItem[6]) {
                            appbarElevation = !appbarElevation;
                          } else if (dropdownValue == listItem[7]) {
                            appbarHeight = !appbarHeight;
                          } else {}
                        });
                      },
                      value: dropdownValue,
                      hint: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Select Properties...',
                          style: TextStyle(color: Color(0xffff4d6d)),
                        ),
                      ),
                      dropdownColor: const Color(0xffff758f),
                      icon: const Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color(0xffff758f),
                      ),
                      iconSize: 40,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      elevation: 25,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      underline: Container(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
