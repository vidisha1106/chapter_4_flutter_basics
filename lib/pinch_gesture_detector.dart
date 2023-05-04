import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class PinchGestureDetector extends StatefulWidget {
  const PinchGestureDetector({Key? key}) : super(key: key);

  @override
  State<PinchGestureDetector> createState() => _PinchGestureDetectorState();
}

class _PinchGestureDetectorState extends State<PinchGestureDetector> {

  double scaleFactor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Gesture Detector")),
        body: GestureDetector(
          onScaleUpdate: (details) {
            print('Data: ${details.scale}');
            setState(() {
              scaleFactor = details.scale;
            });
          },
          child: Center(
              child: Image.asset(Images.simformlogo1,
              height: 125 * scaleFactor,
                width: 125 *scaleFactor,
              )
            //  Text("Flutter",
          //        style: TextStyle(fontSize: scaleFactor * 20))
          ),
        ));
  }
}
