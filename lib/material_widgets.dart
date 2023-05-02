import 'package:chapter_4_flutter_basics/bottom_navigation_bar.dart';
import 'package:chapter_4_flutter_basics/tab_bar.dart';
import 'package:chapter_4_flutter_basics/tab_page_selector.dart';
import 'package:flutter/material.dart';

import 'MySliverAppBar.dart';
import 'drawer.dart';
import 'main.dart';

class MyMaterialWidgets extends StatefulWidget {
  const MyMaterialWidgets({Key? key}) : super(key: key);

  @override
  State<MyMaterialWidgets> createState() => _MyMaterialWidgetsState();
}

class _MyMaterialWidgetsState extends State<MyMaterialWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff4d6d),
          centerTitle: true,
          title: const Text("Material Widgets", style: TextStyle(fontSize: 20)),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 25),
                  child: Text("App Structure & Navigation",
                      style: TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    CustomElevatedButton(
                      title: 'BottomNavigationBar',
                      routeName: MyBottomNavigationBar(),
                      width: 250,
                    ),
                    CustomElevatedButton(
                      title: 'Drawer',
                      routeName: MyDrawer(),
                    ),
                    CustomElevatedButton(
                      title: 'TabBar',
                      routeName: MyTabBar(),
                    ),
                    CustomElevatedButton(
                      title: 'TabPageSelector',
                      routeName: MyTabPageSelector(),
                    ),
                    CustomElevatedButton(
                      title: 'SliverAppBar',
                      width: 150,
                      routeName: MySliverAppBar(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 25),
                  child: Text("Input & Selections",
                      style: TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [

                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
