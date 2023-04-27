import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffff4d6d),
            centerTitle: true,
            title: const Text("TabBar", style: TextStyle(fontSize: 20)),
            elevation: 0,
            bottom: TabBar(
              controller: tabController,
              physics: const BouncingScrollPhysics(),
              isScrollable: true,
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.blue,
             /* indicator: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),*/
              indicatorColor: const Color(0xffffcc89),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              tabs: const [
                Tab(
                  icon: Icon(Icons.wb_cloudy_outlined),
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                ),
                Tab(
                  icon: Icon(Icons.sunny),
                ),
                Tab(
                  icon: Icon(Icons.wb_cloudy_outlined),
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                ),
                Tab(
                  icon: Icon(Icons.sunny),
                ),
                Tab(
                  icon: Icon(Icons.wb_cloudy_outlined),
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                ),
                Tab(
                  icon: Icon(Icons.sunny),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              Center(
                  child: Text("It's Cloudy Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Rainy Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Sunny Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Cloudy Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Rainy Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Sunny Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Cloudy Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Rainy Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              Center(
                  child: Text("It's Sunny Here...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffff4d6d),
                      ))),
              /*TabPageSelector(
                controller: tabController,
                color: Color(0xffff4d6d),
                borderStyle: BorderStyle.solid,
                indicatorSize: 25,
                selectedColor: Color(0xff2b2b2b),
              )*/
            ],
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 9, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }
}
