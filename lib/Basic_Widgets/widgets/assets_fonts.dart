import 'package:flutter/material.dart';

class MyFonts extends StatefulWidget {
  const MyFonts({Key? key}) : super(key: key);

  @override
  State<MyFonts> createState() => _MyFontsState();
}

class _MyFontsState extends State<MyFonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fonts")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w100,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w200,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w300,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w400,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w500,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w600,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w800,
                  color: Color(0xffff4d6d)),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chivo',
                  fontWeight: FontWeight.w900,
                  color: Color(0xffff4d6d)),
            ),
          ],
        ),
      ),
    );
  }
}
