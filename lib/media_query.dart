import 'package:chapter_4_flutter_basics/reusable_code/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMediaQuery extends StatefulWidget {
  const MyMediaQuery({Key? key}) : super(key: key);

  @override
  State<MyMediaQuery> createState() => _MyMediaQueryState();
}

class _MyMediaQueryState extends State<MyMediaQuery> {
  final appbar = AppBar(
    backgroundColor: const Color(0xffff4d6d),
    centerTitle: true,
    title: const Text("MediaQuery",
        style: TextStyle(fontSize: 25, color: Colors.white)),
    elevation: 0,
  );

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenHeight = mediaQueryData.size.height;
    final screenWidth = mediaQueryData.size.width;
    final appbarHeight = appbar.preferredSize.height;
    final statusBarHeight = mediaQueryData.padding.top;
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.limeAccent,
              width: screenWidth,
              height: (screenHeight)*0.25,
              child: Text("Features \n${mediaQueryData.orientation.toString()}",
                  //style: GoogleFonts.lato(fontSize: 20),
                  style: TextStyle(fontSize: screenWidth * 0.05),
                  textAlign: TextAlign.center),
            ),
            Container(
              color: Colors.blue,
              height: screenHeight*0.25,
              width: screenWidth,
              child: Text(
                  "Device Pixel Ratio \n${mediaQueryData.devicePixelRatio}",
                  style: TextStyle(fontSize: screenWidth * 0.05),
                  textAlign: TextAlign.center),
            ),
            Container(
              color: Colors.pinkAccent,
              width: screenWidth,
              height: screenHeight*0.25,
              child: Text("${mediaQueryData.gestureSettings.toString()}",
                  style: TextStyle(fontSize: displayWidth(context) * 0.05),
                  textAlign: TextAlign.center),
            ),
            Container(
              color: Colors.green,
              width: screenWidth,
              height: screenHeight*0.25,
              child: Text("Platform Brightness \n${mediaQueryData.platformBrightness.toString()}",
                  style: TextStyle(fontSize: displayWidth(context) * 0.05),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
