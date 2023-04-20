import 'package:flutter/material.dart';

ThemeMode _themeMode=ThemeMode.light;


class MyPopUpMenuButton extends StatefulWidget{
  MyPopUpMenuButton({Key? key}) : super(key: key);

  get themeMode => _themeMode;

  @override
  State<MyPopUpMenuButton> createState() => _MyPopUpMenuButtonState();
}

class _MyPopUpMenuButtonState extends State<MyPopUpMenuButton> with ChangeNotifier{
  List<String> popList = ['Light Theme', 'Dark Theme'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("PopUpMenuButton",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        elevation: 0,
      ),
      body: PopupMenuButton(
        itemBuilder: (context) => popList
            .map((e) => PopupMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        icon: Icon(Icons.lightbulb_outline),
        iconSize: 25,
        onSelected: (value) {
          if (value==popList[0]){
            _themeMode=ThemeMode.light;
            notifyListeners();
          }
          {
            _themeMode=ThemeMode.dark;
            notifyListeners();
          }
        },
      ),
    );
  }
}
