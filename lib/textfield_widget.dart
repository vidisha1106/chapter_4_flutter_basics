import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("TextField",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        elevation: 0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 300,
              child: TextField(
                controller: emailText,
                inputFormatters: [FilteringTextInputFormatter.deny("[0-9]+"),FilteringTextInputFormatter.singleLineFormatter],
                maxLength: 20,
                cursorHeight: 25,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Color(0xffff4d6d),
                style: TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffffccd5),
                  prefixIcon: Icon(Icons.person, color: Color(0xffff8fa3)),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Color(0xffff4d6d)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xfff8bbd0), width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffff4d6d), width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(25)),
                ),
              )),
          Container(
            height: 25,
          ),
          Container(
              width: 300,
              child: TextField(
                controller: passText,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                obscuringCharacter: '*',
                maxLength: 10,
                cursorHeight: 25,
                style: TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                cursorColor: Color(0xffff4d6d),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffffccd5),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xffff4d6d)),
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye),
                      color: Color(0xffff8fa3)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xfff8bbd0), width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffff4d6d), width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(25)),
                ),
              )),
          Container(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                String uEmail = emailText.text;
                String uPass = passText.text;
              },
              child: Text("Login"))
        ],
      )),
    );
  }
}
