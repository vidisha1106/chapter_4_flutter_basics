import 'package:flutter/material.dart';

class MyPopUpMenuButton extends StatefulWidget {
  const MyPopUpMenuButton({Key? key}) : super(key: key);

  @override
  State<MyPopUpMenuButton> createState() => _MyPopUpMenuButtonState();
}

class _MyPopUpMenuButtonState extends State<MyPopUpMenuButton> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("PopUpMenuButton",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        elevation: 0,
      ),
      body: PopupMenuButton(itemBuilder: (context) =>  ,
      icon: Icon(Icons.lightbulb_outline),iconSize: 25),
    );
  }
}
