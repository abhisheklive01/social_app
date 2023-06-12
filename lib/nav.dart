import 'package:flutter/material.dart';
import 'package:social_app/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currenIndex = 0;
  var _screens = [
    Text("Hello"),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              setState(() {
                _currenIndex = i;
              });
            },
            currentIndex: _currenIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]));
  }
}
