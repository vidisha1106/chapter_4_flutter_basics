import 'package:flutter/material.dart';

class MyPopUpMenuButton extends StatefulWidget {
  const MyPopUpMenuButton({Key? key}) : super(key: key);

  @override
  State<MyPopUpMenuButton> createState() => _MyPopUpMenuButtonState();
}

class _MyPopUpMenuButtonState extends State<MyPopUpMenuButton>
    with ChangeNotifier {

  List<String> popList = ['Light Theme', 'Dark Theme'];
  var selectedMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PopUpMenuButton")),
      body: Center(
        child: PopupMenuButton(
          itemBuilder: (context) => popList
              .map((e) => PopupMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          icon: const Icon(Icons.lightbulb_outline),
          iconSize: 50,
          offset: const Offset(4, 6),
          initialValue: selectedMode,
          elevation: 25,
          color: const Color(0xffff4d6d),
          tooltip: 'Theme of an App',
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfff8bbd0), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          onSelected: (value) {
            setState(() {
            if (value == popList[0]) {
              selectedMode=value;
              var msg=const SnackBar(content: Text("Light Theme is Selected..."),);
              ScaffoldMessenger.of(context).showSnackBar(msg);
            }
            {
              selectedMode=value;
              var msg=const SnackBar(content: Text("Dark Theme is Selected..."),);
              ScaffoldMessenger.of(context).showSnackBar(msg);
            }
            });
          },
        ),
      ),
    );
  }
}
