import 'package:flutter/material.dart';

class MyBoxDecoration extends StatefulWidget {
  const MyBoxDecoration({Key? key}) : super(key: key);

  @override
  State<MyBoxDecoration> createState() => _MyBoxDecorationState();
}

class _MyBoxDecorationState extends State<MyBoxDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.pink,
                gradient: LinearGradient(
                    colors: [Colors.greenAccent, Colors.amberAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                    tileMode: TileMode.mirror,stops: [0.25,0.50] )),
            child: const FlutterLogo(
              size: 150,
            ),
          ),
        ));
  }
}
