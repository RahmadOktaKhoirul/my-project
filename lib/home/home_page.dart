import 'package:flutter/material.dart';

import 'package:login_test/home/navbar/dashboard.dart';
import 'package:login_test/home/navbar/explore.dart';
import 'package:login_test/home/navbar/profile.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

/// ---------------------------------------------------------------------------
///  HOME PAGE  –  dengan Persistent Bottom Nav Bar 6.2.1
/// ---------------------------------------------------------------------------
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  /* --------------------- Bottom‑bar items & screens ---------------------- */

  List<Widget> _buildScreens() => const [
    DashboardScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: 'Home',
      activeColorPrimary: Colors.purple,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.search),
      title: 'Explore',
      activeColorPrimary: Colors.purple,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: 'Profile',
      activeColorPrimary: Colors.purple,
      inactiveColorPrimary: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style9, // gaya bawaan (coba ubah sesuka hati)
      backgroundColor: Colors.black, // cocok dg tema gelap
      confineToSafeArea: true,
    );
  }
}
