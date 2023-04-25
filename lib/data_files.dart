import 'dart:io';

import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MyDataFiles extends StatefulWidget {
  const MyDataFiles({Key? key}) : super(key: key);

  @override
  State<MyDataFiles> createState() => _MyDataFilesState();
}

class _MyDataFilesState extends State<MyDataFiles> {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    //print(directory.path);
    return directory.path;
  }

  Future<File> _getLocalFile(String filename) async {
    final path = await _localPath;
    //print(File("$path/$filename"));
    return File("$path/$filename");
  }

  Future<File> writeToFile(String filename, String text) async {
    final file = await _getLocalFile(filename);
    return file.writeAsString(text);
  }

  Future<String> readLocalFile(String filename) async {
    try {
      final file = await _getLocalFile(filename);
      return file.readAsString();
    } catch (e) {
      return '0';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Data Files", style: TextStyle(fontSize: 25)),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              title: 'Get Path For File',
              onPressed: () async {
                var filePath = await _localPath;
                //print(_localPath);
                setState(() {
                  var showFilePath = SnackBar(
                    content: Text(filePath,
                        style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20)),
                    backgroundColor: const Color(0xfff8bbd0),
                    duration: const Duration(milliseconds: 5000),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(showFilePath);
                });
              },
            ),
            CustomTextButton(
              title: 'Create File',
              onPressed: () async {
                var filename = await _getLocalFile("example.txt");
                //print(filename);
                setState(() {
                  var showFileName = SnackBar(
                    content: Text(filename.toString(),
                        style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20)),
                    backgroundColor: const Color(0xfff8bbd0),
                    duration: const Duration(milliseconds: 5000),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(showFileName);
                });
              },
            ),
            CustomTextButton(
              title: 'Write into File',
              onPressed: () async {
                await writeToFile("example.txt","Welcome to Data Files ");
                //print(writeFile);
                setState(() {
                  var showWriteFile = const SnackBar(
                    content: Text("Data is Inserted......",
                        style: TextStyle(color: Color(0xffff4d6d), fontSize: 20)),
                    backgroundColor: Color(0xfff8bbd0),
                    duration: Duration(milliseconds: 5000),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(showWriteFile);
                });
              },
            ),
            CustomTextButton(
              title: 'Read File',
              onPressed: () async {
                var readFile = await readLocalFile("example.txt");
                //print(readFile);
                setState(() {
                  var showReadFile = SnackBar(
                    content: Text(readFile.toString(),
                        style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20)),
                    backgroundColor: const Color(0xfff8bbd0),
                    duration: const Duration(milliseconds: 5000),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(showReadFile);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
