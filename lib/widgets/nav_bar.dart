import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true, 
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 35, color: Colors.black),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 35, color: Colors.black),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, size: 35, color: Colors.black),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined, size: 35, color: Colors.black),
          label: 'Like',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined, size: 35, color: Colors.black),
          label: 'Profile',
        ),
      ],
    );
  }
}
