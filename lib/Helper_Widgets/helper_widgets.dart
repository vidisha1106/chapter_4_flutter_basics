import 'package:chapter_4_flutter_basics/Helper_Widgets/box_decoration.dart';
import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:flutter/material.dart';

class MyHelperWidgets extends StatefulWidget {
  const MyHelperWidgets({Key? key}) : super(key: key);

  @override
  State<MyHelperWidgets> createState() => _MyHelperWidgetsState();
}

class _MyHelperWidgetsState extends State<MyHelperWidgets> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff4d6d),
          centerTitle: true,
          title: const Text("Helper Widgets", style: TextStyle(fontSize: 20)),
          elevation: 0,
          bottom: const TabBar(
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            indicatorColor: Color(0xffffcc89),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            tabs: [
              Tab(
                child: Text("Expanded VS Flexible"),
              ),
              Tab(
                child: Text("Align"),
              ),
              Tab(
                child: Text("Spacer"),
              ),
              Tab(
                child: Text("Wrap"),
              ),
              Tab(
                child: Text("Positioned"),
              ),
              Tab(
                child: Text("Center"),
              ),
              Tab(
                child: Text("ClipRRect"),
              ),
              Tab(
                child: Text("BoxDecoration"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 25,
                      color: Colors.yellowAccent,
                      child: const Text("A", textScaleFactor: 2),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        width: 50,
                        child: const Text("A", textScaleFactor: 2),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 75,
                        color: Colors.tealAccent,
                        child: const Text("A", textScaleFactor: 2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      width: 25,
                      color: Colors.yellowAccent,
                      child: const Text("A", textScaleFactor: 2),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        width: 50,
                        child: const Text("A", textScaleFactor: 2),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: Container(
                        width: 75,
                        color: Colors.tealAccent,
                        child: const Text("A", textScaleFactor: 2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.indigo,
                width: 150,
                height: 150,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  color: Colors.yellowAccent,
                  child: const Text("A", textScaleFactor: 2),
                ),
                const Spacer(),
                Container(
                  color: Colors.blue,
                  width: 75,
                  height: 75,
                  child: const Text("A", textScaleFactor: 2),
                ),
                const Spacer(flex: 2),
                Container(
                  width: 75,
                  height: 75,
                  color: Colors.tealAccent,
                  child: const Text("A", textScaleFactor: 2),
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              runSpacing: 10,
              spacing: 10,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.lightBlue,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.redAccent,
                ),
                Positioned(
                  width: 75,
                  height: 75,
                  top: 100,
                  left: 125,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                )
              ],
            ),
            const Center(
              child: Text("Hello", textScaleFactor: 2),
            ),
            Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(125),
                    bottomRight: Radius.elliptical(150, 175),topLeft: Radius.zero,topRight: Radius.circular(1100)),
                child: Image.asset(Images.unstoppable,),
              ),
            ),
            const MyBoxDecoration()
          ],
        ),
      ),
    );
  }
}
