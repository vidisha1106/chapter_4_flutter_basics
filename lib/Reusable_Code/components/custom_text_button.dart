import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
