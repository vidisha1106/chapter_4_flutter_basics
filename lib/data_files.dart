import 'dart:io';

import 'package:chapter_4_flutter_basics/text_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class MyDataFiles extends StatefulWidget {
  const MyDataFiles({Key? key}) : super(key: key);

  @override
  State<MyDataFiles> createState() => _MyDataFilesState();
}

class _MyDataFilesState extends State<MyDataFiles> {
  var fileController = TextEditingController();
  bool showFileError = false;
  bool showTextError = false;
  var textColtroller = TextEditingController();

  Future<String> get _localPath async {
    /*final directory = FilePicker.platform.saveFile(
        dialogTitle: "Please Select Destination for Storing the File",
        fileName: fileController.text);*/

    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<void> writeToFile(String fileName, String text) async {
    final path = await _localPath;
    /*final path = await FilePicker.platform.saveFile(
        fileName: '$fileName', dialogTitle: "Choose Location to Store the File");
    */final File file = File("$path/$fileName");
    bool fileExist = await file.exists();
    if (fileController.text.isEmpty) {
      setState(() {
        showFileError = true;
      });
    } else {
      setState(() {
        showFileError = false;
      });
    }
    if (textColtroller.text.isEmpty) {
      setState(() {
        showTextError = true;
      });
    } else {
      setState(() {
        showTextError = false;
      });
    }
    if (!showFileError && !showTextError) {
      if (fileExist) {
        File("$path/$fileName").writeAsString(text);
        snackBar('$path/$fileName is already Exist');
      } else {
        File("$path/$fileName");
        snackBar('$path/$fileName is created and content is inserted');
      }
    }
    file.writeAsString(text);
  }

  Future<String> readLocalFile(fileName) async {
    final path = await _localPath;
    try {
      final file = File('$path/$fileName');
      if (fileController.text.isEmpty) {
        setState(() {
          showFileError = true;
        });
      } else {
        setState(() {
          showFileError = false;
        });
      }
      return file.readAsString();
    } catch (e) {
      return '0';
    }
  }

  void snackBar(msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20),
        ),
        backgroundColor: const Color(0xfff8bbd0),
        duration: const Duration(milliseconds: 5000),
      ),
    );
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
            SizedBox(
                width: 300,
                child: TextField(
                  controller: fileController,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  maxLength: 20,
                  cursorHeight: 25,
                  onTapOutside: (event) =>
                      FocusScope.of(context).requestFocus(new FocusNode()),
                  keyboardType: TextInputType.text,
                  cursorColor: const Color(0xffff4d6d),
                  style:
                  const TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                  decoration: InputDecoration(
                    errorText: showFileError ? "Enter FileName" : null,
                    errorBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    filled: true,
                    fillColor: const Color(0xffffccd5),
                    prefixIcon: const Icon(Icons.file_copy_outlined,
                        color: Color(0xffff8fa3)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          fileController.clear();
                        },
                        icon:
                        const Icon(Icons.clear, color: Color(0xffff8fa3))),
                    labelText: 'FileName',
                    hintText: 'abc.txt',
                    hintStyle:
                    const TextStyle(color: Color(0xffff4d6d), fontSize: 15),
                    labelStyle: const TextStyle(color: Color(0xffff4d6d)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xfff8bbd0), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffff4d6d), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                )),
            Container(
              height: 25,
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  controller: textColtroller,
                  maxLength: 50,
                  cursorHeight: 25,
                  onTapOutside: (event) =>
                      FocusScope.of(context).requestFocus(new FocusNode()),
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  minLines: 1,
                  cursorColor: const Color(0xffff4d6d),
                  style:
                  const TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                  decoration: InputDecoration(
                    errorText: showTextError ? "Enter Text" : null,
                    errorBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    filled: true,
                    fillColor: const Color(0xffffccd5),
                    prefixIcon: const Icon(Icons.file_copy_outlined,
                        color: Color(0xffff8fa3)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          textColtroller.clear();
                        },
                        icon:
                        const Icon(Icons.clear, color: Color(0xffff8fa3))),
                    labelText: 'Content',
                    hintText: 'hello world',
                    hintStyle:
                    const TextStyle(color: Color(0xffff4d6d), fontSize: 15),
                    labelStyle: const TextStyle(color: Color(0xffff4d6d)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xfff8bbd0), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffff4d6d), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    disabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                )),
            Container(
              height: 25,
            ),
            CustomTextButton(
              title: 'Get Path For File',
              onPressed: () async {
                var filePath = await _localPath;
                snackBar(filePath);
              },
            ),
            CustomTextButton(
              title: 'Create & Write into File',
              onPressed: () async {
                await writeToFile(fileController.text, textColtroller.text);
              },
            ),
            CustomTextButton(
              title: 'Read File',
              onPressed: () async {
                var readFile = await readLocalFile(fileController.text);
                snackBar(readFile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
