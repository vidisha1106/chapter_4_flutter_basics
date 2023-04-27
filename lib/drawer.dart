import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int initialIndex = 0;

  List<Widget> pages = [
    const Center(
      child: Text("Dashboard",style: TextStyle(color: Color(0xffff4d6d),fontSize: 25),),
    ),
    const Center(
      child: Text("Contacts",style: TextStyle(color: Color(0xffff4d6d),fontSize: 25)),
    ),
    const Center(
      child: Text("Events",style: TextStyle(color: Color(0xffff4d6d),fontSize: 25)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Drawer", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Color(0xffff4d6d)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(bottom: 10),
                      height: 70,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Images.accountIcon),
                          ),
                          shape: BoxShape.circle),
                    ),
                    const Text(
                      "Vidisha Luhar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Text(
                      "vidisha.l@simformsolutions.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                )),
            drawerListTile(
              icon: Icons.dashboard,
              title: "Dashboard",
              isSelected: initialIndex == 0,
              onTap: () {
                setState(() {
                  initialIndex = 0;
                });
                Navigator.pop(context);
                // Navigator.
              },
            ),
            drawerListTile(
              icon: Icons.contacts,
              title: "Contacts",
              isSelected: initialIndex == 1,
              onTap: () {
                setState(() {
                  initialIndex = 1;
                });
                Navigator.pop(context);
                // Navigator.
              },
            ),
            drawerListTile(
              icon: Icons.event,
              title: "Events",
              isSelected: initialIndex == 2,
              onTap: () {
                setState(() {
                  initialIndex = 2;
                });
                Navigator.pop(context);
                // Navigator.
              },
            ),
          ],
        ),
      ),
      body: pages[initialIndex],
    );
  }
}

Widget drawerListTile(
    {required IconData icon,
    required String title,
    void Function()? onTap,
    required bool isSelected}) {
  return ListTile(
    leading: Icon(icon, color: const Color(0xffff4d6d)),
    iconColor: const Color(0xffff4d6d),
    onTap: onTap,
    selected: isSelected,
    selectedTileColor: const Color(0xfff8bbd0),
    title:
        Text(title, style: const TextStyle(color: Color(0xffff4d6d), fontSize: 18)),
  );
}
