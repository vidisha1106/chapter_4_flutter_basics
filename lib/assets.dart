import 'package:chapter_4_flutter_basics/reusable_code/assets_images.dart';
import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class MyAssets extends StatefulWidget {
  const MyAssets({Key? key}) : super(key: key);

  @override
  State<MyAssets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Assets", style: TextStyle(fontSize: 25)),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Text('Assets Images',
                style: TextStyle(
                  color: Color(0xffff4d6d),
                  fontSize: 25,
                )),
          )),
          CustomTextButton(
              title: 'Image',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  elevation: 50,
                  backgroundColor: const Color(0xffffb3c1),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset('assets/images/hii.png'),
                    );
                  },
                );
              }),
          CustomTextButton(
              title: 'Gif',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  elevation: 50,
                  backgroundColor: const Color(0xffffb3c1),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset(Images.gif),
                    );
                  },
                );
              }),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 25, bottom: 0),
            child: Text('Assets File',
                style: TextStyle(
                  color: Color(0xffff4d6d),
                  fontSize: 25,
                )),
          )),
          CustomTextButton(
              title: 'Text File',
              onPressed: () async {
                var textFile =
                    await rootBundle.loadString('assets/text_files/text.txt');
                // ignore: use_build_context_synchronously
                showModalBottomSheet(
                  context: context,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  elevation: 50,
                  backgroundColor: const Color(0xffffb3c1),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(25),
                      child: Text(textFile,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25)),
                    );
                  },
                );
              }),
        ],
      ),
    );
  }
}
