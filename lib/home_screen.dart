import 'package:flutter/material.dart';
import 'package:todo_app/archived_tasks_screen.dart';
import 'package:todo_app/done_tasks_screen.dart';
import 'package:todo_app/new_tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = 
  [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titels = 
  [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 34, 46),
        title: Center(
          child: Text(titels[currentIndex],
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center),
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline,
              ),
              label: 'Done'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive_outlined,
              ),
              label: 'Archived'),
        ],
      ),
    );
  }
}
