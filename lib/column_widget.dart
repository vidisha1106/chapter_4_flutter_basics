import 'package:flutter/material.dart';

class MyColumnWidget extends StatefulWidget {
  const MyColumnWidget({Key? key}) : super(key: key);

  @override
  State<MyColumnWidget> createState() => _MyColumnWidgetState();
}

class _MyColumnWidgetState extends State<MyColumnWidget> {
  List<String> listItemMain = [
    'Start',
    'Center',
    'End',
    'SpaceAround',
    'SpaceEvenly',
    'SpaceBetween',
  ];

  MainAxisAlignment columnMain = MainAxisAlignment.start;
  CrossAxisAlignment columnCross = CrossAxisAlignment.start;

  List<String> listItemCross = ['Start', 'End', 'Stretch', 'Center'];

  String? dropdownValueMain;
  String? dropdownValueCross;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Column"),
        centerTitle: true,
        backgroundColor: Color(0xffff4d6d),
      ),
      body: Wrap(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pinkAccent, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 400,
                width: 500,
                child: Column(
                  mainAxisAlignment: columnMain,
                  crossAxisAlignment: columnCross,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "MainAxisAlignment",
                      style: TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: DecoratedBox(
                      position: DecorationPosition.foreground,
                      decoration: BoxDecoration(
                          color: const Color(0xfff8bbd0),
                          border: Border.all(
                              color: const Color(0xffff4d6d), width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          backgroundBlendMode: BlendMode.modulate),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          isDense: true,
                          items: listItemMain
                              .map((value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValueMain = newValue;
                              if (newValue == listItemMain[0]) {
                                columnMain = MainAxisAlignment.start;
                              } else if (newValue == listItemMain[1]) {
                                columnMain = MainAxisAlignment.center;
                              } else if (newValue == listItemMain[2]) {
                                columnMain = MainAxisAlignment.end;
                              } else if (newValue == listItemMain[3]) {
                                columnMain = MainAxisAlignment.spaceAround;
                              } else if (newValue == listItemMain[4]) {
                                columnMain = MainAxisAlignment.spaceEvenly;
                              } else if (newValue == listItemMain[5]) {
                                columnMain = MainAxisAlignment.spaceBetween;
                              }
                            });
                          },
                          value: dropdownValueMain,
                          hint: const Text(
                            "Select",
                            style: TextStyle(color: Color(0xffff4d6d)
                            ),
                          ),
                          dropdownColor: const Color(0xfff8bbd0),
                          icon: const Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Color(0xffff4d6d),
                          ),
                          iconSize: 40,
                          style: const TextStyle(
                            color: Color(0xffff4d6d),
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CrossAxisAlignment",
                      style: TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: DecoratedBox(
                      position: DecorationPosition.foreground,
                      decoration: BoxDecoration(
                        color: const Color(0xfff8bbd0),
                        border:
                            Border.all(color: const Color(0xffff4d6d), width: 3),
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        backgroundBlendMode: BlendMode.modulate,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          isDense: true,
                          items: listItemCross
                              .map((value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValueCross = newValue;
                              if (newValue == listItemCross[0]) {
                                columnCross = CrossAxisAlignment.start;
                              } else if (newValue == listItemCross[1]) {
                                columnCross = CrossAxisAlignment.end;
                              } else if (newValue == listItemCross[2]) {
                                columnCross = CrossAxisAlignment.stretch;
                              } else if (newValue == listItemCross[3]) {
                                columnCross = CrossAxisAlignment.center;
                              } else {}
                            });
                          },
                          value: dropdownValueCross,
                          hint: const Text(
                            "Select",
                            style: TextStyle(color:Color(0xffff4d6d)),
                          ),
                          dropdownColor: const Color(0xfff8bbd0),
                          icon: const Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Color(0xffff4d6d),
                          ),
                          iconSize: 40,
                          style: const TextStyle(
                            color: Color(0xffff4d6d),
                            fontSize: 20,
                          ),
                          elevation: 25,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          underline: Container(),
                          focusColor: Color(0xffff4d6d),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
