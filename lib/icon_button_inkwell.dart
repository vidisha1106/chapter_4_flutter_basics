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
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("IconButton & InkWell ",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  var msg=SnackBar(content: Text("IconButton"));
                  ScaffoldMessenger.of(context).showSnackBar(msg);
                },
                iconSize: 100,
                icon: Icon(Icons.code),
                color: Color(0xffff4d6d),
                splashColor: Color(0xfff8bbd0),
                tooltip: "Code",
                autofocus: true,
                splashRadius: 50,
                highlightColor: Colors.red),
            InkWell(
              borderRadius: BorderRadius.all(Radius.circular(25)),
                onTap: (){
                  var msg=SnackBar(content: Text("InkWell"));
                  ScaffoldMessenger.of(context).showSnackBar(msg);
                },

                highlightColor: Color(0xffff4d6d),
                splashColor: Colors.limeAccent,
                child: Container(
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
