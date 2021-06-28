import 'package:eccomerceapp/screen2.dart';
import 'package:eccomerceapp/screen3.dart';
import 'package:flutter/material.dart';

import 'Screen1.dart';

class Eccomerce extends StatefulWidget {
  @override
  _EccomerceState createState() => _EccomerceState();
}

class _EccomerceState extends State<Eccomerce> {
  int currentTab = 2;

  Widget currentScreen = Screen2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Colors.white, elevation: 46,
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen1();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.production_quantity_limits_sharp,
                        color: currentTab == 0
                            ? Colors.deepPurpleAccent
                            : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen2();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.home,
                        size: 30,
                        color: currentTab == 2
                            ? Colors.deepPurpleAccent
                            : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen3();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person,
                        color: currentTab == 3
                            ? Colors.deepPurpleAccent
                            : Colors.black)),
              ]),
        ),
      ),
    );
  }
}
