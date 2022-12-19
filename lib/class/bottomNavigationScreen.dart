import 'package:firstapp/class/bottom_Screen/about.dart';
import 'package:firstapp/class/bottom_Screen/cart.dart';
import 'package:firstapp/class/bottom_Screen/home.dart';
import 'package:firstapp/class/bottom_Screen/profile.dart';
import 'package:flutter/material.dart';

class bottomNavigationScreen extends StatefulWidget {
  const bottomNavigationScreen({super.key});

  @override
  State<bottomNavigationScreen> createState() => _bottomNavigationScreenState();
}

class _bottomNavigationScreenState extends State<bottomNavigationScreen> {
  int _selectedIndex = 0;
  List<Widget> lstBottomScreen = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const AboutUsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Home'),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          _selectedIndex = index;
        },
      ),
    );
  }
}
