import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          ///SliverAppBar
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Text("SliverAppBar"),
            leading: Icon(Icons.menu),
            centerTitle: true,
            expandedHeight: 250,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Color(0xffff4d6d),
              )
            ),
          ),

          SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  10,
                  (index) => Container(
                        width: 250,
                        height: 100,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xffffccd5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)),),
                      ))))
        ],
      ),
    );
  }
}
