import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/screens/messages_screeen.dart';
import 'package:medical/screens/schedule_screen.dart';
import 'package:medical/screens/settings_screen.dart';

import '../screens/home_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _screens = [

    HomeScreen(),

    MessageScreen(),

    ScheduleScreen(),

    SettingsScreen(),
  ];
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 126, 199, 247),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Home",
              ),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),
              label: "Message",
              ),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
              label: "Schedule",
              ),
                BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: "Settings",
              ),
          ],
        ),
      ),
    );
  }
}