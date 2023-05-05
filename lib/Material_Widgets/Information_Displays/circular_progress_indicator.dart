import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatefulWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  State<MyCircularProgressIndicator> createState() => _MyCircularProgressIndicatorState();
}

class _MyCircularProgressIndicatorState extends State<MyCircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Progress Indicator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.pink),
              strokeWidth: 5,
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 25),
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.pink),
              minHeight: 10,
            ),
            SizedBox(height: 25),

          ],
        ),
      ),
    );
  }
/*
  @override
  void initState() {
    var animationController=AnimatedContainer(duration: Duration(seconds: 10),);
    var colorTween=(ColorTween(begin: Colors.green,end: Colors.pinkAccent));
    animationController.drive
  }*/
}
