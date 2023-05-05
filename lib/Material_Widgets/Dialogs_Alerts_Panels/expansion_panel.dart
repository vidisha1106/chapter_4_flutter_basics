import 'package:flutter/material.dart';

class MyExpansionPanel extends StatefulWidget {
  const MyExpansionPanel({Key? key}) : super(key: key);

  @override
  State<MyExpansionPanel> createState() => _MyExpansionPanelState();
}

class _MyExpansionPanelState extends State<MyExpansionPanel> {

  List<bool> isOpen = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Expansion Panel")),
        body: Column(
          children: [
            ExpansionPanelList(
              expandedHeaderPadding: const EdgeInsets.all(8),
              elevation: 1,
              animationDuration: const Duration(seconds: 1),
              dividerColor: const Color(0xffff4d6d),
              children: [
                ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return const Text("Apple",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),);
                    },
                    canTapOnHeader: true,
                    body: const Text(
                        "An apple is an edible fruit produced by an apple tree (Malus domestica). "
                            "Apple trees are cultivated worldwide and are the most widely grown species "
                            "in the genus Malus . "),
                    isExpanded: isOpen[0]),
                ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return const Text("Banana",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),);
                    },
                    canTapOnHeader: true,
                    body: const Text(
                        "Bananas contain fiber as well as vitamins and minerals that may provide health benefits."
                            "Bananas are among the most important food crops on the planet. "),
                    isExpanded: isOpen[1]),
                ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return const Text("Mango",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),);
                    },
                    canTapOnHeader: true,
                    body: const Text(
                        "Packed with nutrients."
                            "Low in calories."
                            "May help prevent diabetes."
                            "High in healthy plant compounds."),
                    isExpanded: isOpen[2]),
              ],
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  isOpen[panelIndex] = !isExpanded;
                });
              },
            ),
          ],
        )

    );
  }
}
