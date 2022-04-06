import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:flutter/material.dart';

class SlidingClippedNavbar extends StatefulWidget {
  const SlidingClippedNavbar({Key? key}) : super(key: key);

  @override
  State<SlidingClippedNavbar> createState() => _SlidingClippedNavbarState();
}

class _SlidingClippedNavbarState extends State<SlidingClippedNavbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        barItems: <BarItem>[
          BarItem(
            icon: Icons.event,
            title: 'Events',
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.business,
            title: 'Business',
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.school,
            title: 'School',
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.settings,
            title: 'Settings',
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
          ),
        ],
        selectedIndex: _selectedIndex,
        onButtonPressed: _onItemTapped,
      ),
    );
  }
}
