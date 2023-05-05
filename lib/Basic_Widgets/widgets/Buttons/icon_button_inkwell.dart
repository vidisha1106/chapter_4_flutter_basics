import 'package:flutter/material.dart';

class MyIconInkWell extends StatefulWidget {
  const MyIconInkWell({Key? key}) : super(key: key);

  @override
  State<MyIconInkWell> createState() => _MyIconInkWellState();
}

class _MyIconInkWellState extends State<MyIconInkWell> {
  final iconFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("IconButton & InkWell")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  var msg=const SnackBar(content: Text("IconButton"));
                  ScaffoldMessenger.of(context).showSnackBar(msg);
                },
                iconSize: 100,
                icon: const Icon(Icons.code),
                color: const Color(0xffff4d6d),
                splashColor: const Color(0xfff8bbd0),
                tooltip: "Code",
                autofocus: true,
                splashRadius: 50,
                highlightColor: Colors.red),
            InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
                onTap: (){
                  var msg=const SnackBar(content: Text("InkWell"));
                  ScaffoldMessenger.of(context).showSnackBar(msg);
                },

                highlightColor: const Color(0xffff4d6d),
                splashColor: Colors.limeAccent,
                child: const SizedBox(
                  width: 250,
                    height: 250,
                    child: Center(
                      child: Text(
              "InkWell",
              style: TextStyle(color: Color(0xffff4d6d), fontSize: 25),
            ),
                    )))
          ],
        ),
      ),
    );
  }
}
