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
            ListTile(
                onTap: () {},
                leading: Icon(Icons.dashboard, color: Color(0xffff4d6d)),
                title: Text("Dashboard",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.contacts_sharp, color: Color(0xffff4d6d)),
                title: Text("Contacts",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.event, color: Color(0xffff4d6d)),
                title: Text("Events",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.notes, color: Color(0xffff4d6d)),
                title: Text("Notes",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.notifications, color: Color(0xffff4d6d)),
                title: Text("Notifications",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.message, color: Color(0xffff4d6d)),
                title: Text("Messages",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.account_circle, color: Color(0xffff4d6d)),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Color(0xffff4d6d), fontSize: 18),
                )),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.settings, color: Color(0xffff4d6d)),
                title: Text("Settings",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            Divider(),
            ListTile(
                onTap: () {},
                leading:
                    Icon(Icons.privacy_tip_outlined, color: Color(0xffff4d6d)),
                title: Text("Privacy Policy",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading:
                Icon(Icons.privacy_tip_outlined, color: Color(0xffff4d6d)),
                title: Text("Privacy Policy",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading:
                Icon(Icons.privacy_tip_outlined, color: Color(0xffff4d6d)),
                title: Text("Privacy Policy",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading:
                Icon(Icons.privacy_tip_outlined, color: Color(0xffff4d6d)),
                title: Text("Privacy Policy",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))), ListTile(
                onTap: () {},
                leading:
                Icon(Icons.privacy_tip_outlined, color: Color(0xffff4d6d)),
                title: Text("Privacy Policy",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
            ListTile(
                onTap: () {},
                leading:
                    Icon(Icons.feedback_outlined, color: Color(0xffff4d6d)),
                title: Text("Send Feedback",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 18))),
          ],
        ),
      ),
    );
  }
}
