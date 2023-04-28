import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          ///SliverAppBar
          SliverAppBar(
            shape: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            backgroundColor: Colors.black,
            //title: Text("SliverAppBar", style: TextStyle(color: Colors.white)),
            leading: const Icon(Icons.arrow_back),
            centerTitle: true,
            expandedHeight: 250,
            //floating: true,
            pinned: true,
            //snap: true,
            flexibleSpace: FlexibleSpaceBar(
                title: const Text("SliverAppBar"/*
                    "hello world\n" "Flutter\n"
                 "dart"*/),
                background: Container(
                  //color: Color(0xffff4d6d),
                  decoration: const BoxDecoration(
                      color: Color(0xffff4d6d),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                )),
            /*flexibleSpace: FlexibleSpaceBar(
                //title: Text("SliverAppBar",style: TextStyle(color: Colors.black)),
                background: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: Image(image: AssetImage(Images.beach)))),*/
          ),

          SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  10,
                  (index) => Container(
                        width: 250,
                        height: 100,
                        margin: const EdgeInsets.all(8),
                        decoration:   const BoxDecoration(
                          color: Color(0xffffccd5),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ))))
        ],
      ),
    );
  }
}
