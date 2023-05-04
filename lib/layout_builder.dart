import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatefulWidget {
  const MyLayoutBuilder({Key? key}) : super(key: key);

  @override
  State<MyLayoutBuilder> createState() => _MyLayoutBuilderState();
}

class _MyLayoutBuilderState extends State<MyLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout Builder")),
      body: LayoutBuilder(
        builder: (buildContext, boxConstraints) {
          if(boxConstraints.maxWidth<=500){
            return Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.limeAccent,
                    height: 250,
                    width: 100,
                  ),
                  Container(
                    color: Colors.teal,
                    height: 250,
                    width: 100,
                  ),
                ],
              ),
            );
          }
         else{
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.limeAccent,
                  height: 100,
                  width: 250,
                ),
                Container(
                  color: Colors.teal,
                  height: 100,
                  width: 250,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
