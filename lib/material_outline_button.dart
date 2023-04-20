import 'package:flutter/material.dart';

class MyMaterialOutline extends StatefulWidget {
  const MyMaterialOutline({Key? key}) : super(key: key);

  @override
  State<MyMaterialOutline> createState() => _MyMaterialOutlineState();
}

class _MyMaterialOutlineState extends State<MyMaterialOutline>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Material & Outlined Button",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MaterialButton(
                onPressed: () {
                  var message = const SnackBar(
                    content: Text(
                      "Material Button....",
                      style: TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                //padding: const EdgeInsets.all(10),
                elevation: 25,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    side: BorderSide(width: 0.3, color: Color(0xffff4d6d))),
                child: const Text("Material Button",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 22)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OutlinedButton.icon(
                onPressed: () {
                  var msg = const SnackBar(content: Text(
                      "Outlined Button...", style: TextStyle(color: Color(
                      0xffff4d6d), fontSize: 20)),padding: EdgeInsets.all(10),);
                  ScaffoldMessenger.of(context).showSnackBar(msg);
                },
                icon: const Icon(Icons.add, color: Color(0xffff4d6d), size: 25),
                label: const Text("Outlined Button",
                    style: TextStyle(color: Color(0xffff4d6d), fontSize: 20)),
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Color(0xffff4d6d)),
                    //padding: const EdgeInsets.all(25),
                    shape: const BeveledRectangleBorder(
                        side: BorderSide(color: Color(0xffff4d6d), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    //minimumSize: const Size(250, 250),
                ),
              ),
            )
          ],
        ),
      ),
      //backgroundColor: const Color(0xff2b2b2b),
    );
  }
}
