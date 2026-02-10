import 'package:flutter/material.dart';
import 'package:practice_ui/home_screen.dart';
import 'package:practice_ui/my_orders.dart';
import 'package:practice_ui/services_screen.dart';
import 'package:practice_ui/tracking_screen.dart';

class BottomNav extends StatefulWidget {

  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedNavIndex=0;

    List screens = [
    Home(), ServicesScreen(), TrackingScreen(), MyOrders(), Home()
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromRGBO(0, 217, 174, 1),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedNavIndex,
        onTap: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
