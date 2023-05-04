import 'package:flutter/material.dart';

class MyPlaceholder extends StatelessWidget {
  const MyPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Placeholder")),
      body: Row(
        children: [
          Flexible(
            child: Column(
              children: const [
                Flexible(
                  child: Placeholder(
                    color: Color(0xffff4d6d),
                    strokeWidth: 1,
                  ),
                ),
                Flexible(
                  child: Placeholder(
                    strokeWidth: 2,
                    color: Color(0xffff4d6d),
                  ),
                )
              ],
            ),
          ),
          const Flexible(
            child: Placeholder(
              color: Color(0xffff4d6d),
              strokeWidth: 3,
            ),
          ),
        ],
      ),
    );
  }
}
