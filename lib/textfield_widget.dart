import 'package:chapter_4_flutter_basics/main.dart';
import 'package:chapter_4_flutter_basics/reusable_code/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var visiblePass = false;

  RegExp emailRegExp = RegExp(AppConstants.emailRegex);
  RegExp passRegExp = RegExp(AppConstants.passwordRegex);

  bool isValidEmail = true;
  bool isValidPass = true;

  final usernameFocus = FocusNode();
  final passFocus = FocusNode();

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
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 300,
                child: TextField(
                  onEditingComplete: () =>
                      FocusScope.of(context).requestFocus(passFocus),
                  focusNode: usernameFocus,
                  controller: emailController,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny("[0-9]+"),
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  maxLength: 20,
                  cursorHeight: 25,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color(0xffff4d6d),
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                  decoration: InputDecoration(
                    errorText: isValidEmail ? null : "Enter Valid Username",
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    filled: true,
                    fillColor: const Color(0xffffccd5),
                    prefixIcon: const Icon(Icons.person, color: Color(0xffff8fa3)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          emailController.clear();
                        },
                        icon: const Icon(Icons.clear, color: Color(0xffff8fa3))),
                    labelText: 'Username',
                    hintText: 'abc@gmail.com',
                    hintStyle:
                        const TextStyle(color: Color(0xffff4d6d), fontSize: 15),
                    labelStyle: const TextStyle(color: Color(0xffff4d6d)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xfff8bbd0), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xffff4d6d), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                )),
            Container(
              height: 25,
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  focusNode: passFocus,
                  controller: passController,
                  obscureText: visiblePass,
                  keyboardType: TextInputType.visiblePassword,
                  obscuringCharacter: '*',
                  maxLength: 10,
                  cursorHeight: 25,
                  style: const TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                  cursorColor: const Color(0xffff4d6d),
                  decoration: InputDecoration(
                    errorText: isValidPass? null : "Enter Valid Passwword",
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    filled: true,
                    fillColor: const Color(0xffffccd5),
                    labelText: 'Password',
                    hintText: 'Abc@123',
                    hintStyle:
                        const TextStyle(color: Color(0xffff4d6d), fontSize: 15),
                    labelStyle: const TextStyle(color: Color(0xffff4d6d)),
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visiblePass = !visiblePass;
                          });
                        },
                        icon: Icon(visiblePass
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: const Color(0xffff8fa3)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          passController.clear();
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Color(0xffff8fa3),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xfff8bbd0), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Color(0xffff4d6d), width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                )),
            Container(
              height: 25,
            ),
            CustomElevatedButton(
              title: 'Login',
              onPressed: () {
                setState(() {
                  String uEmail = emailController.text;
                  String uPass = passController.text;
                  if (uEmail.isEmpty || !emailRegExp.hasMatch(uEmail)) {
                    isValidEmail = false;
                    print('if');
                  }
                  else{
                    isValidEmail=true;
                  }
                  if (uPass.isEmpty || !passRegExp.hasMatch(uPass)) {
                    isValidPass =false;
                    print('else if');
                    print("Password:$isValidPass");
                  }
                  else{
                    isValidPass=true;
                    print(isValidPass);
                  }
                  if(isValidEmail && isValidPass){
                    print("valid");
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        "Username & Password is Correct",
                        style:
                            TextStyle(color: Color(0xffff4d6d), fontSize: 20),
                      ),
                      backgroundColor: Color(0xfff8bbd0),
                    ));
                  }
                });
              },
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
