import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var currentSliderValue = 20.0;
  var currentPrimarySlidervalue = 0.2;
  var currentSecondarySlidervalue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Slider", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: SliderTheme(
        data: SliderThemeData(
          valueIndicatorColor: Colors.black,
        ),
        child: Column(
          children: [
            Slider(
              value: currentSliderValue,
              onChanged: (double value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              thumbColor: Colors.black,
              overlayColor: MaterialStatePropertyAll(Colors.teal),
              activeColor: Color(0xffff4d6d),
              divisions: 5,
              inactiveColor: Color(0xffffccd5),
              label: currentSliderValue.toString(),
              max: 100,
              min: 0,
            ),
            Slider(
              value: currentPrimarySlidervalue,
              onChanged: (double value) {
                setState(() {
                  currentPrimarySlidervalue = value;
                });
              },
              min: 0,
              max: 50,
              thumbColor: Colors.black,
              label: currentPrimarySlidervalue.toString(),
              inactiveColor: Color(0xffffccd5),
              activeColor: Color(0xffff4d6d),
              secondaryActiveColor: Colors.limeAccent,
              secondaryTrackValue: currentSecondarySlidervalue,
            ),
            Slider(
              value: currentSecondarySlidervalue,
              onChanged: (double value) {
                setState(() {
                  currentSecondarySlidervalue = value;
                });
              },
              min: 0,
              max: 50,
              thumbColor: Colors.black,
              label: currentSecondarySlidervalue.toString(),
              inactiveColor: Color(0xffffccd5),
              activeColor: Color(0xffff4d6d),
              secondaryActiveColor: Colors.limeAccent,
              secondaryTrackValue: currentPrimarySlidervalue,
            )
          ],
        ),
      ),
    );
  }
}
