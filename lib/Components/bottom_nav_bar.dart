import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          tabActiveBorder: Border.all(color: Colors.brown.shade300),
          activeColor: Colors.brown.shade100,
          color: Colors.brown.shade400,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Bag',
            )
          ]),
    );
  }
}
