import 'package:flutter/material.dart';

class MyMaterialOutline extends StatefulWidget {
  const MyMaterialOutline({Key? key}) : super(key: key);

  @override
  State<MyMaterialOutline> createState() => _MyMaterialOutlineState();
}

class _MyMaterialOutlineState extends State<MyMaterialOutline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Material & Outline Button",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        elevation: 0,
      ),
      body: Column(
        children: [
          MaterialButton(onPressed: () {
            var message = SnackBar(
              content: Text(
                "onPressed Method of Material Buttom....",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              backgroundColor: Color(0xffff4d6d),
            );
            ScaffoldMessenger.of(context).showSnackBar(message);
          }, onLongPress: () {
            var message = SnackBar(content: Text(
              "OnLongPressed Method of Material Button... ",
              style: TextStyle(fontSize: 20, color: Colors.white),),backgroundColor: Color(0xff2b2b2b),);
            ScaffoldMessenger.of(context).showSnackBar(message);
          },
            padding: EdgeInsets.all(10),
            height: 250,
            child: Text("Material Button",style: TextStyle(color: Colors.white,fontSize: 25)),
            elevation: 25,
            color: Color(0xff2b2b2b),

          )
        ],
      ),
      backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
