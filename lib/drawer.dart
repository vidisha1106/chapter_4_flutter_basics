import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
                decoration: BoxDecoration(color: Color(0xffff4d6d)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(bottom: 10),
                      height: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Images.accountIcon),
                          ),
                          shape: BoxShape.circle),
                    ),
                    Text(
                      "Vidisha Luhar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "vidisha.l@simformsolutions.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                )),
            DrawerListTile(
                icon: Icons.dashboard,
                id: 1,
                title: "Dashboard",
                )
          ],
        ),
      ),
    );
  }
}

Widget DrawerListTile(
    {required IconData icon,
    required int id,
    required String title,
    void Function()? onTap,
    bool? isSelected}) {
  return InkWell(
    onTap: () {},
    child: ListTile(
      leading: Icon(icon),
      iconColor: Color(0xffff4d6d),
      onTap: () {},
      selected: true,
      selectedTileColor: Color(0xfff8bbd0),
      title:
          Text(title, style: TextStyle(color: Color(0xffff4d6d), fontSize: 18)),
    ),
  );
}
