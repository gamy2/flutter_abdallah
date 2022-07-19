import 'package:f_ab_study/modules/bottom_nav/arch/arch.dart';
import 'package:f_ab_study/modules/bottom_nav/done/doneTask.dart';
import 'package:f_ab_study/modules/bottom_nav/task/tasks.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class HomeNav extends StatefulWidget {
  HomeNav({Key? key}) : super(key: key);

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _currentIndex = 1;
  List<Widget> screens = [ArchPage(), Tasks(), DoneTask()];
  List<String> titles = ["Arch", "Tasks", "Done"];
  @override
  void initState() {
    super.initState();
    createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "account"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Edit")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}

void createDataBase() async {
  // var databasesPath = await getDatabasesPath();
  var db = openDatabase("tasks.db", version: 1, onCreate: (db, ver) {
    print("object");
  });
}
