import 'package:flutter/material.dart';

import '../../Reusable_Code/components/custom_text_button.dart';

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  State<MyTextWidget> createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  bool color = false;
  bool size = false;
  bool bold = false;
  bool italic = false;
  bool letterSpacing = false;
  bool wordSpacing = false;
  bool background = false;
  bool shadow = false;
  bool underline = false;
  bool font = false;
  bool align = false;
  bool direction = false;
  bool softWrap = false;
  bool overflow = false;
  bool maxLines = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text")),
      body: Wrap(
        children:[ Column(children: [
          Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
                color: const Color(0xfffff0f3),
                border: Border.all(color: Colors.pinkAccent, width: 3),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "The Text widget displays a string of text with single style. ",
                style: TextStyle(
                  fontSize: size ? 25 : 50,
                  color: color ? const Color(0xffff4d6d) : null,
                  fontWeight: bold ? FontWeight.bold : null,
                  fontStyle: italic ? FontStyle.italic : null,
                  letterSpacing: letterSpacing ? 25 : null,
                  wordSpacing: wordSpacing ? 25 : null,
                  background: background ? Paint() : null,
                  shadows: shadow
                      ? [
                          const Shadow(
                              color: Colors.yellowAccent,
                              blurRadius: 5,
                              offset: Offset(1, 2))
                        ]
                      : null,
                  decoration: underline ? TextDecoration.underline : null,
                  fontFamily: font ? "Rubic" : null,
                ),
                textAlign: align ? TextAlign.start : TextAlign.end,
                textDirection:
                    direction ? TextDirection.ltr : TextDirection.rtl,
                softWrap: softWrap ? true : false,
                overflow: overflow ? TextOverflow.fade : null,
                maxLines: maxLines ? 3 : null,
              ),
            ),
          ),
          Wrap(
            children: [
              CustomTextButton(
                title: "Color",
                onPressed: () {
                  setState(() {
                    color = !color;
                  });
                },
              ),
              CustomTextButton(
                title: "Size",
                onPressed: () {
                  setState(() {
                    size = !size;
                  });
                },
              ),
              CustomTextButton(
                title: "Bold",
                onPressed: () {
                  setState(() {
                    bold = !bold;
                  });
                },
              ),
              CustomTextButton(
                title: "Italic",
                onPressed: () {
                  setState(() {
                    italic = !italic;
                  });
                },
              ),
              CustomTextButton(
                title: "Letter Spacing",
                onPressed: () {
                  setState(() {
                    letterSpacing = !letterSpacing;
                  });
                },
              ),
              CustomTextButton(
                title: "Word Spacing",
                onPressed: () {
                  setState(() {
                    wordSpacing = !wordSpacing;
                  });
                },
              ),
              CustomTextButton(
                title: "Background",
                onPressed: () {
                  setState(() {
                    background = !background;
                  });
                },
              ),
              CustomTextButton(
                title: "Shadow",
                onPressed: () {
                  setState(() {
                    shadow = !shadow;
                  });
                },
              ),
              CustomTextButton(
                title: "Underline",
                onPressed: () {
                  setState(() {
                    underline = !underline;
                  });
                },
              ),
              CustomTextButton(
                title: "Font",
                onPressed: () {
                  setState(() {
                    font = !font;
                  });
                },
              ),
              CustomTextButton(
                title: "Align",
                onPressed: () {
                  setState(() {
                    align = !align;
                  });
                },
              ),
              CustomTextButton(
                title: "Direction",
                onPressed: () {
                  setState(() {
                    direction = !direction;
                  });
                },
              ),
              CustomTextButton(
                title: "Soft Wrap",
                onPressed: () {
                  setState(() {
                    softWrap = !softWrap;
                  });
                },
              ),
              CustomTextButton(
                title: "Overflow",
                onPressed: () {
                  setState(() {
                    overflow = !overflow;
                  });
                },
              ),
              CustomTextButton(
                title: "MaxLines",
                onPressed: () {
                  setState(() {
                    maxLines = !maxLines;
                  });
                },
              ),
            ],
          ),
        ]),
      ]),
    );
  }
}
