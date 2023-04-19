import 'package:flutter/material.dart';

class MyRowWidget extends StatefulWidget {
  const MyRowWidget({Key? key}) : super(key: key);

  @override
  State<MyRowWidget> createState() => _MyRowWidgetState();
}

class _MyRowWidgetState extends State<MyRowWidget> {
  List<String> listItemMain = [
    'Start',
    'Center',
    'End',
    'SpaceAround',
    'SpaceEvenly',
    'SpaceBetween',
  ];

  MainAxisAlignment rowMain = MainAxisAlignment.start;
  CrossAxisAlignment rowCross = CrossAxisAlignment.start;

  List<String> listItemCross = ['Start', 'End', 'Stretch', 'Center'];

  String? dropdownValueMain;
  String? dropdownValueCross;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Row"),
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
                child: Row(
                  mainAxisAlignment: rowMain,
                  crossAxisAlignment: rowCross,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      color: const Color(0xffff4d6d),
                    ),
                    const SizedBox(
                      width: 15,
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
                                rowMain = MainAxisAlignment.start;
                              } else if (newValue == listItemMain[1]) {
                                rowMain = MainAxisAlignment.center;
                              } else if (newValue == listItemMain[2]) {
                                rowMain = MainAxisAlignment.end;
                              } else if (newValue == listItemMain[3]) {
                                rowMain = MainAxisAlignment.spaceAround;
                              } else if (newValue == listItemMain[4]) {
                                rowMain = MainAxisAlignment.spaceEvenly;
                              } else if (newValue == listItemMain[5]) {
                                rowMain = MainAxisAlignment.spaceBetween;
                              }
                            });
                          },
                          value: dropdownValueMain,
                          hint: const Text(
                            "Select",
                            style: TextStyle(color: Color(0xffff4d6d)),
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
                    width: 190,
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
                                rowCross = CrossAxisAlignment.start;
                              } else if (newValue == listItemCross[1]) {
                                rowCross = CrossAxisAlignment.end;
                              } else if (newValue == listItemCross[2]) {
                                rowCross = CrossAxisAlignment.stretch;
                              } else if (newValue == listItemCross[3]) {
                                rowCross = CrossAxisAlignment.center;
                              }
                            });
                          },
                          value: dropdownValueCross,
                          hint: const Text(
                            "Select",
                            style: TextStyle(color: Color(0xffff4d6d)),
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
          ],
        ),
      ]),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
