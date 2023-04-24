import 'package:chapter_4_flutter_basics/main.dart';
import 'package:flutter/material.dart';

class MyInheritedwidget extends InheritedWidget
{

  final int counter;
  final Widget child;

  const MyInheritedwidget({Key? key,required this.counter, required this.child,}) : super(key : key, child: child);

  static MyInheritedwidget? of (BuildContext context)
  {
    context.dependOnInheritedWidgetOfExactType<MyInheritedwidget>();
  }

  @override
  bool updateShouldNotify(covariant MyInheritedwidget oldWidget) {
    return oldWidget!=this;
  }
}
class AppData
{
  late int count;
  late Color BackgroungColor;

  AppData(this.count, this.BackgroungColor);

  incrementCount()
  {
    count++;
  }
  changeBackgroundColor(Color bgColor)
  {
    BackgroungColor=bgColor;
  }
}

void main()
{
  //MyInheritedwidget(appdata: counter: 10,child:MyApp());
}
