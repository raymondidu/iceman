import 'package:flutter/material.dart';
import 'package:iceman/Pages/bag_page.dart';
import 'package:iceman/Pages/shop_page.dart';

import '../Components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigateNavBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List _pages = [
    ShopPage(),
    BagPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateNavBar(index),
      ),
      body: _pages[selectedIndex],
    );
  }
}
