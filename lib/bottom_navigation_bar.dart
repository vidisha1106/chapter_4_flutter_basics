import 'package:chapter_4_flutter_basics/assets.dart';
import 'package:chapter_4_flutter_basics/assets_fonts.dart';
import 'package:chapter_4_flutter_basics/media_query.dart';
import 'package:chapter_4_flutter_basics/textfield_widget.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int cIndex = 0;

  static const List<Widget> pages = [
    MyFonts(),
    MyAssets(),
    MyMediaQuery(),
    MyTextField(),
    MyCalls()
  ];

  /*final tabs = [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Settings")),
    Center(child: Text("Account"))
  ];
*/
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
        body: //pages[cIndex] ,
        IndexedStack(children: pages,index: cIndex),
        bottomNavigationBar: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.font_download_sharp),
                label: 'Fonts',
                backgroundColor: Colors.cyanAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.videogame_asset_sharp),
                label: 'Assets',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.mediation),
                label: 'MediaQuery',
                backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.text_fields),
                label: 'TextField',
                backgroundColor: Colors.limeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Call',
                backgroundColor: Colors.limeAccent),
          ],
          elevation: 25,
          mouseCursor: MouseCursor.uncontrolled,
          iconSize: 25,
          backgroundColor: const Color(0xffff4d6d),
          fixedColor: Colors.white,
          selectedFontSize: 15,
          selectedIconTheme: const IconThemeData(color: Colors.black, size: 35),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          //selectedLabelStyle: TextStyle(color: Colors.black),
          //selectedItemColor: Colors.limeAccent,
          currentIndex: cIndex,
          onTap: (index) => setState(() {
            cIndex = index;
          }),
        ));
  }
}

class MyCalls extends StatefulWidget {
  const MyCalls({Key? key}) : super(key: key);

  @override
  State<MyCalls> createState() => _MyCallsState();
}

class _MyCallsState extends State<MyCalls> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff4d6d),
          automaticallyImplyLeading: false,
          flexibleSpace:
              Column(mainAxisAlignment: MainAxisAlignment.end, children: const [
            TabBar(
              labelStyle: TextStyle(fontSize: 20),
              tabs: [
                Tab(child: Text("Incoming")),
                Tab(child: Text("Outgoing")),
                Tab(child: Text("Missed"))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
