import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({Key? key}) : super(key: key);

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {

double leftValue=0;
double topValue=0;
int time=300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Detector")),
      body: Stack(
        children:[ AnimatedPositioned(
          duration: Duration(milliseconds: time),
          left: leftValue,
          top: topValue,
          child: GestureDetector(
            onTap: (){
              /*var msg=SnackBar(content: Text("GestureDetector"));
              ScaffoldMessenger.of(context).showSnackBar(msg);*/
              setState(() {
                leftValue=0;
                topValue=0;
              });
            },
            onPanUpdate: (details) => setState(() {
              topValue+=details.delta.dy;
              leftValue+=details.delta.dx;
              time=0;
            }),
            onPanEnd: (details) => setState(() {
              topValue=details.primaryVelocity ?? 0;
              leftValue=details.primaryVelocity ?? 0;
              time=0;
            }),
            child: Container(
              color: Color(0xffffccd5),
              child: Text("GestureDetector",style: TextStyle(fontSize: 20,color: Color(0xffff4d6d))),
              padding: EdgeInsets.all(10), /*decoration: Duration(milliseconds: 300)*/
            ),
          ),
        ),
      ]),
    );
  }
}
