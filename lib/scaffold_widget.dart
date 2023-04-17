import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Color(0xffff4d6d),
      ),
      endDrawer: Drawer(
        width: 250,
        backgroundColor: Color(0xffffb3c1),
        elevation: 25,
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.account_circle,
                        color: Colors.black, size: 35),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "User Account",
                    style: TextStyle(color: Colors.black, fontSize: 23),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Color(0xffffb3c1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                elevation: 25,
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    child: Center(
                        child: Text(
                      "This is a bottom sheet",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                  );
                },
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xffff4d6d))),
            child: Text("Open Bottom Sheet", style: TextStyle(fontSize: 18))),
      ),
      backgroundColor: Color(0xff2b2b2b),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const message = SnackBar(
            content: Text("Yay!! A SnackBar",style: TextStyle(color: Colors.black),),
            elevation: 100,
            backgroundColor: Color(0xffff8fa3),
          );
          ScaffoldMessenger.of(context).showSnackBar(message);
        },
        elevation: 50,
        tooltip: "Show Snackbar",
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
        backgroundColor: Color(0xffff4d6d),
        child: const Icon(Icons.arrow_downward, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profiile'),
        ],
        selectedItemColor: Color(0xffff4d6d),
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: Color(0xfffff0f3),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffff4d6d))),
          child: const Icon(Icons.print),
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffff4d6d))),
          child: const Icon(Icons.send),
        ),
      ],
    );
  }
}
