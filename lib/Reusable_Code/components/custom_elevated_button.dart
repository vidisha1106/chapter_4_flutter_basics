
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final Widget? routeName;
  final void Function()? onPressed;
  final double? width;
  final double height;

  const CustomElevatedButton(
      {super.key,
        required this.title,
        this.routeName,
        this.onPressed,
        this.width ,
        this.height = 75});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: routeName == null
            ? onPressed
            : () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => routeName!,
            ),
          );
          //context.dependOnInheritedWidgetOfExactType(aspect: routeName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffff4d6d),
          side: const BorderSide(color: Color(0xffffccd5), width: 1),
          shadowColor: Colors.white,
          elevation: 05,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.all(10),
          fixedSize: Size(width ?? 111, height),
        ),
        child: Text(title, textAlign: TextAlign.center),
      ),
    );
  }
}
