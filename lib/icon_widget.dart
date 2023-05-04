import 'package:flutter/material.dart';

class MyIconWidget extends StatefulWidget {
  const MyIconWidget({Key? key}) : super(key: key);

  @override
  State<MyIconWidget> createState() => _MyIconWidgetState();
}

class _MyIconWidgetState extends State<MyIconWidget> {
  bool curve = false;
  bool size = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Icon")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Icon(
                  Icons.music_note,
                  color: Color(0xffff4d6d),
                  size: 100,
                  shadows: [
                    Shadow(
                        offset: Offset(10, 10),
                        blurRadius: 6,
                        color: Colors.tealAccent)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Color(0xffff4d6d),
                    size: 100,
                    shadows: [
                      Shadow(
                          offset: Offset(10, 10),
                          blurRadius: 6,
                          color: Colors.limeAccent)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.light_mode,
                    color: Color(0xffff4d6d),
                    size: 100,
                    shadows: [
                      Shadow(
                          offset: Offset(10, 10),
                          blurRadius: 6,
                          color: Colors.white70)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff2b2b2b))),
              onPressed: () {
                setState(() {
                  curve = !curve;
                  size = !size;
                });
              },
              child: FlutterLogo(
                  style: FlutterLogoStyle.markOnly,
                  curve: curve ? Curves.decelerate : Curves.bounceOut,
                  duration: const Duration(seconds: 3),
                  size: size? 50 : 150,
                  textColor: Colors.white),
            ),
          )
        ],
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
