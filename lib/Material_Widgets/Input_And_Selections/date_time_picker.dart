import 'package:flutter/material.dart';

import '../../Reusable_Code/components/custom_text_button.dart';

class MyDateTimePicker extends StatefulWidget {
  const MyDateTimePicker({Key? key}) : super(key: key);

  @override
  State<MyDateTimePicker> createState() => _MyDateTimePickerState();
}

class _MyDateTimePickerState extends State<MyDateTimePicker> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date & Time Picker")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Your Selected Date :",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${date.day.toString()}   : ",
                      style: const TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${date.month.toString()}   : ",
                      style: const TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(date.year.toString(),
                      style: const TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextButton(
                title: 'Choose Date',
                onPressed: () {
                  showDate();
                },
              ),
            ),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Your Selected Time :",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${time.hour.toString()}   : ",
                      style: const TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(time.minute.toString(),
                      style: const TextStyle(
                        color: Color(0xffff4d6d),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextButton(
                title: 'Choose Time',
                onPressed: () {
                  showTime();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
      cancelText: "Not now",
      confirmText: "Confirm",
      fieldHintText: "Month/Date/Year",
      initialDatePickerMode: DatePickerMode.year,
      initialEntryMode: DatePickerEntryMode.input,
      errorFormatText: "Enter a Valid Date",
      errorInvalidText: "Date Out OF Range",
      builder: (context, myChild) => Theme(
          data: ThemeData(
              //primaryColor: Color(0xffff4d6d),
              colorSchemeSeed: const Color(0xffff4d6d)),
          child: myChild!),
    ).then(
      (value) {
        setState(() {
          date = value!;
        });
      },
    );
  }

  void showTime() {
    showTimePicker(
      context: context,
      initialTime: time,
      initialEntryMode: TimePickerEntryMode.input,
      builder: (context, myChild) => Theme(
        data: ThemeData(colorSchemeSeed: const Color(0xffff4d6d)),
        child: myChild!,
      ),
      confirmText: "Done",
      cancelText: "Not now",
    ).then((value) {setState(() {
      time=value!;
    });},);
  }
}
