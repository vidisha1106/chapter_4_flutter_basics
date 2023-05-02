import 'package:flutter/material.dart';

class MyChip extends StatefulWidget {
  const MyChip({Key? key}) : super(key: key);

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  List<String> chipList = [
    'Git',
    'GitHub',
    'Pull',
    'Push',
    'Rebase',
    'Merge',
    'Clone',
    'Fetch',
    'Commit',
    'Add',
    'Squash',
    'Stash'
  ];

  Map<String, bool> inputChipMap = {
    'Git': true,
    'GitHub': false,
    'Pull': false,
    'Push': false,
    'Rebase': false,
    'Merge': false,
    'Clone': false,
    'Fetch': false,
    'Commit': false,
    'Add': false,
    'Squash': false,
    'Stash': false
  };

  Map<String, bool> filterChipMap = {
    'Flutter': true,
    'Dart': false,
    'Git': false,
    'Java': false,
    'JavaScript': false,
    'Android': false,
    'ReactNative': false,
    'Python': false,
    'C': false,
    'C++': false,
    'Html': false,
    'Php': false
  };
  bool bColor = false;
  bool aIcon = false;
  String? chip = 'Git';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff4d6d),
        centerTitle: true,
        title: const Text("Chip", style: TextStyle(fontSize: 20)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Chip(
              label: Text("One"),
              avatar: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                child: Text("1"),
              ),
              backgroundColor: Color(0xfffff0f3),
              side: BorderSide(color: Color(0xffff4d6d)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Simple Chip",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                  children: List.generate(
                chipList.length,
                (index) {
                  return Chip(
                    label: Text(chipList[index]),
                    onDeleted: () {
                      setState(() {
                        chipList.remove(chipList[index]);
                      });
                    },
                    elevation: 5,
                  );
                },
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Action Chip",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionChip(
                    label: const Text("One"),
                    elevation: 5,
                    onPressed: () {
                      var msg = const SnackBar(
                          content: Text("You have selected One"),
                          duration: Duration(seconds: 3));
                      ScaffoldMessenger.of(context).showSnackBar(msg);
                    }),
                const SizedBox(width: 25),
                ActionChip(
                    label: const Text("Two"),
                    elevation: 5,
                    onPressed: () {
                      var msg = const SnackBar(
                          content: Text("You have selected Two"),
                          duration: Duration(seconds: 3));
                      ScaffoldMessenger.of(context).showSnackBar(msg);
                    }),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Input Chip",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Wrap(
              spacing: 5,
              alignment: WrapAlignment.center,
              children: List.generate(
                inputChipMap.length,
                (index) {
                  return InputChip(
                    label: Text(inputChipMap.keys.elementAt(index)),
                    backgroundColor: Colors.pinkAccent,
                    selected: inputChipMap.values.elementAt(index),
                    selectedColor: Colors.green,
                    onSelected: (value) {
                      // print(inputChipMap[inputChipMap.keys.elementAt(index)]);
                      setState(() {
                        inputChipMap[inputChipMap.keys.elementAt(index)] =
                            value;
                      });
                    },
                    elevation: 5,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Filter Chip",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 5,
                alignment: WrapAlignment.center,
                children: List.generate(
                  filterChipMap.length,
                  (index) {
                    return FilterChip(
                      label: Text(filterChipMap.keys.elementAt(index)),
                      backgroundColor: Colors.grey,
                      selected: filterChipMap.values.elementAt(index),
                      selectedColor: Colors.yellow,
                      onSelected: (value) {
                        //print(filterChipMap[filterChipMap.keys.elementAt(index)]);
                        setState(() {
                          filterChipMap[filterChipMap.keys.elementAt(index)] =
                              value;
                        });
                      },
                      showCheckmark: false,
                      elevation: 5,
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Choice Chip",
                  style: TextStyle(
                    color: Color(0xffff4d6d),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 5,
                alignment: WrapAlignment.center,
                children: List.generate(
                  chipList.length,
                  (index) {
                    return ChoiceChip(
                      label: Text(chipList[index]),
                      backgroundColor: Colors.grey,
                      selected: chip == chipList[index],
                      selectedColor: Colors.lightBlueAccent,
                      onSelected: (value) {
                        //print(filterChipMap[filterChipMap.keys.elementAt(index)]);
                        setState(() {
                          chip = chipList[index];
                        });
                      },
                      elevation: 5,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
