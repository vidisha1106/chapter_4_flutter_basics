import 'package:flutter/material.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart'
    show CustomTextButton;

import 'assets_images.dart';

class MyImageWidget extends StatefulWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  State<MyImageWidget> createState() => _MyImageWidgetState();
}

class _MyImageWidgetState extends State<MyImageWidget> {
  
  BlendMode valueBlend=BlendMode.dstATop;
  BoxFit valueFit=BoxFit.contain;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Image",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 275,
              width: 500,
              decoration: BoxDecoration(
                  color: const Color(0xfffff0f3),
                  border: Border.all(color: Colors.pinkAccent, width: 3),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: Image.asset(Images.dog,
                  fit: valueFit,
                  colorBlendMode: valueBlend,
              color: Colors.pinkAccent),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text("Color Blend Mode : ", style: TextStyle(fontSize: 25,color: Color(0xffff4d6d) ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              children: [
                CustomTextButton(title: "Color", onPressed: (){
                  setState(() {
                    valueBlend=BlendMode.color;
                  });
                }),
                CustomTextButton(title: "Light", onPressed: (){
                  setState(() {
                    valueBlend=BlendMode.lighten;
                  });
                }),
                CustomTextButton(title: "Dark", onPressed: (){
                  setState(() {
                    valueBlend=BlendMode.darken;
                  });
                }),
                CustomTextButton(title: "Hue", onPressed: (){
                  setState(() {
                    valueBlend=BlendMode.hue;
                  });
                }),
                CustomTextButton(title: "Clear", onPressed: (){
                  setState(() {
                    valueBlend=BlendMode.dstATop;
                  });
                }),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text("Fit the Image : ", style: TextStyle(fontSize: 25,color: Color(0xffff4d6d) ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              children: [
                CustomTextButton(title: "Contain", onPressed: (){
                  setState(() {
                    valueFit=BoxFit.contain;
                  });
                }),
                CustomTextButton(title: "Cover", onPressed: (){
                  setState(() {
                    valueFit=BoxFit.cover;
                  });
                }),
                CustomTextButton(title: "Fill", onPressed: (){
                  setState(() {
                    valueFit=BoxFit.fill;
                  });
                }),
                CustomTextButton(title: "FitHeight", onPressed: (){
                  setState(() {
                    valueFit=BoxFit.fitHeight;
                  });
                }),
                CustomTextButton(title: "FitWidth", onPressed: (){
                  setState(() {
                    valueFit=BoxFit.fitWidth;
                  });
                }),
                CustomTextButton(title: "ScaleDown", onPressed: (){
                  setState(() {
                    valueFit=BoxFit.scaleDown;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
