import 'package:flutter/material.dart';

class MyTextElevatedButton extends StatefulWidget {
  const MyTextElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MyTextElevatedButton> createState() => _MyTextElevatedButtonState();
}

class _MyTextElevatedButtonState extends State<MyTextElevatedButton> {
  bool isTextHover = false;
  bool isElevatedHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text & Elevated Button ")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: TextButton(
                onHover: (isTextHovering) {
                  setState(() {
                    isTextHover = isTextHovering;
                  });
                },
                onPressed: () {
                  const message = SnackBar(
                      padding: EdgeInsets.all(25.0),
                      content: Text(
                        "onPressed Method of TextButton is Called...",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      backgroundColor: Color(0xffff4d6d));
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                onLongPress: () {
                  var messageLong = const SnackBar(
                      content: Text(
                        "onLongPressed Method of TextButton is called... ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      backgroundColor: Color(0xff2b2b2b));
                  ScaffoldMessenger.of(context).showSnackBar(messageLong);
                },
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      side: BorderSide(color: Color(0xffff4d6d), width: 1),
                    ),
                    backgroundColor:
                        isTextHover ? const Color(0xff2b2b2b) : const Color(0xfffff0f3),
                    foregroundColor: const Color(0xffff4d6d),
                    textStyle: const TextStyle(fontSize: 25,fontFamily: 'DynaPuff')),
                child: const Text("Text Button"),
              ),
            ),
            SizedBox(
              height: 250,
              width: 250,
              child: ElevatedButton(
                onHover: (isElevatedHovering) {
                  setState(() {
                    isElevatedHover = isElevatedHovering;
                  });
                },
                onPressed: () {
                  const message = SnackBar(
                      padding: EdgeInsets.all(25.0),
                      content: Text(
                        "onPressed Method of ElevatedButton is Called...",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      backgroundColor: Color(0xffff4d6d));
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                onLongPress: () {
                  var messageLong = const SnackBar(
                      content: Text(
                        "onLongPressed Method of ElevatedButton is called... ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      backgroundColor: Color(0xff2b2b2b));
                  ScaffoldMessenger.of(context).showSnackBar(messageLong);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isElevatedHover ? const Color(0xff2b2b2b) : const Color(0xfffff0f3),
                    side: const BorderSide(color: Color(0xffff4d6d), width: 1),
                    shadowColor: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 25)),
                child: const Text("Elevated Button",
                    style: TextStyle(color: Color(0xffff4d6d),fontFamily: 'DynaPuff')),
              ),
            ),
          ],
        ),
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
