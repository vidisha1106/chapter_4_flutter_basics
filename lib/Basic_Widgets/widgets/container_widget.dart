import 'package:flutter/material.dart';

import '../../Reusable_Code/components/custom_text_button.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {

  bool child = false;
  bool height = false;
  bool width = false;
  bool margin = false;
  bool padding = false;
  bool alignment = false;
  bool transform = false;
  bool border = false;
  bool borderRadius = false;
  bool color = false;
  bool gradient = false;
  bool shadow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container")),
      body: Column(
        children: [
          Container(
            height: height ? 250 : 200,
            width: width ? 350 : 300,
            margin: margin ? const EdgeInsets.all(10) : null,
            padding: padding ? const EdgeInsets.all(25) : null,
            alignment: alignment ? Alignment.bottomCenter : null,
            transform: transform ? Matrix4.rotationZ(0.2) : null,
            decoration: BoxDecoration(
              border: border
                  ? Border.all(width: 2, color: const Color(0xffff4d6d))
                  : null,
              borderRadius: borderRadius ? const BorderRadius.all(
                  Radius.circular(10)) : null,
              color: color ? const Color(0xffff758f) : null,
              gradient: gradient ? const LinearGradient(colors: [
                Color(0xffff4d6d),
                Color(0xffff758f),
                Color(0xffff8fa3),
                Color(0xffffb3c1),
                Color(0xffffccd5),
                Color(0xfffff0f3)
              ]) : null,
              boxShadow: shadow?  [ const BoxShadow(
                      color: Color(0xffff4d6d), offset: Offset(5, 5), blurRadius: 25)
                ] : null),
            child: child ? const Text("Welcome",
                style: TextStyle(fontSize: 25, color: Colors.white)) : null,
            //constraints: BoxConstraints.expand(height: 250,width: 250),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Wrap(
              children: [
                CustomTextButton(title: 'Child', onPressed: () {
                  setState(() {
                    child=!child;
                  });
                }),
                CustomTextButton(title: 'Height', onPressed: () {
                  setState(() {
                    height=!height;
                  });
                }),
                CustomTextButton(title: 'Width', onPressed: () {
                  setState(() {
                    width=!width;
                  });
                }),
                CustomTextButton(title: 'Margin', onPressed: () {
                  setState(() {
                    margin=!margin;
                  });
                }),
                CustomTextButton(title: 'Padding', onPressed: () {
                  setState(() {
                    padding=!padding;
                  });
                }),
                CustomTextButton(title: 'Border', onPressed: () {
                  setState(() {
                    border=!border;
                  });
                }),
                CustomTextButton(title: 'Alignment', onPressed: () {
                  setState(() {
                    alignment=!alignment;
                  });
                }),
                CustomTextButton(title: 'Transform', onPressed: () {
                  setState(() {
                    transform=!transform;
                  });
                }),
                CustomTextButton(title: 'BorderRadius', onPressed: () {
                  setState(() {
                    borderRadius=!borderRadius;
                  });
                }),
                CustomTextButton(title: 'Color', onPressed: () {
                  setState(() {
                    color=!color;
                  });
                }),
                CustomTextButton(title: 'Gradient', onPressed: () {
                  setState(() {
                    gradient=!gradient;
                  });
                }),
                CustomTextButton(title: 'Shadow', onPressed: () {
                  setState(() {
                    shadow=!shadow;
                  });
                }),
              ],
            ),
          )
        ],
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
