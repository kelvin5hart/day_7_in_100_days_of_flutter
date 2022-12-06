import 'package:day_7_in_100_days_of_flutter/screens/bottom_nav_screens/favorite_screen.dart';
import 'package:day_7_in_100_days_of_flutter/screens/bottom_nav_screens/map_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_screens/home_screen.dart';
import 'bottom_nav_screens/profile_screen.dart';

class OverViewScreen extends StatefulWidget {
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  State<OverViewScreen> createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen> {
  int _currentScreen = 0;
  final List<Widget> screens = <Widget>[
    const HomeScreen(),
    const MapScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: (int newScreen){
          setState(() {
            _currentScreen = newScreen;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        iconSize: 35,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu_rounded), label: ""),
        ],),
    );
  }
}
