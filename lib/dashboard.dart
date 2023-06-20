import 'package:flutter/material.dart';
import 'package:social_app/profile_page.dart';

import 'home_scree.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var currentIndex = 0;

  var pageList = [HomeScreen(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.black,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: currentIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
              print(currentIndex);
            });
          },
          destinations: [
            NavigationDestination(
                selectedIcon: Icon(Icons.add),
                icon: Icon(Icons.home),
                label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile")
          ]),
      body: pageList[currentIndex],
    );
  }
}
