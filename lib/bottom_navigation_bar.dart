import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int cIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff4d6d),
          centerTitle: true,
          title:
              const Text("BottomNavigationBar", style: TextStyle(fontSize: 20)),
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',backgroundColor: Colors.cyanAccent),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search',backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings',backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person',backgroundColor: Colors.limeAccent),
          ],
          iconSize: 25,
          backgroundColor: Color(0xffff4d6d),
          // fixedColor: Colors.blue,
          currentIndex: cIndex,
          onTap: (index) => setState(() {
            cIndex=index;
          }),
        ));
  }
}
