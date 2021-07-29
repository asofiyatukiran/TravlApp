import 'package:flutter/material.dart';
import 'package:travlapplication/Discover.dart';
import 'package:travlapplication/Planner.dart';
import 'package:travlapplication/Save.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOption = <Widget>[
    Discover(),
    Planner(),
    Save(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travl'),
        ), 
        body: Center(
          child: _widgetOption.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore), 
              title: Text('Discover'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), 
              title: Text('Planner'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), 
              title: Text('Save'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          ),
    );
  }
}