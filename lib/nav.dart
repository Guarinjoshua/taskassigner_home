import 'package:flutter/material.dart';

import 'Setting_Screen.dart';
import 'group_Screen.dart';
import 'home_Screen.dart';


class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Group(),
    Settings(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex  = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Group ')),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings')),
      ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),


    );
  }
}
