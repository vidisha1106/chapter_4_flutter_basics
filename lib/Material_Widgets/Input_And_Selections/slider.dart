import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var currentSliderValue = 20.0;
  var currentPrimarySliderValue = 0.2;
  var currentSecondarySliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider ")),
      body: SliderTheme(
        data: const SliderThemeData(
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
              overlayColor: const MaterialStatePropertyAll(Colors.teal),
              activeColor: const Color(0xffff4d6d),
              divisions: 5,
              inactiveColor: const Color(0xffffccd5),
              label: currentSliderValue.toString(),
              max: 100,
              min: 0,
            ),
            Slider(
              value: currentPrimarySliderValue,
              onChanged: (double value) {
                setState(() {
                  currentPrimarySliderValue = value;
                });
              },
              min: 0,
              max: 50,
              thumbColor: Colors.black,
              label: currentPrimarySliderValue.toString(),
              inactiveColor: const Color(0xffffccd5),
              activeColor: const Color(0xffff4d6d),
              secondaryActiveColor: Colors.limeAccent,
              secondaryTrackValue: currentSecondarySliderValue,
            ),
            Slider(
              value: currentSecondarySliderValue,
              onChanged: (double value) {
                setState(() {
                  currentSecondarySliderValue = value;
                });
              },
              min: 0,
              max: 50,
              thumbColor: Colors.black,
              label: currentSecondarySliderValue.toString(),
              inactiveColor: const Color(0xffffccd5),
              activeColor: const Color(0xffff4d6d),
              secondaryActiveColor: Colors.limeAccent,
              secondaryTrackValue: currentPrimarySliderValue,
            )
          ],
        ),
      ),
    );
  }
}
