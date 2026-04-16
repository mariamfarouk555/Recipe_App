import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/Profile/profilescreen.dart';
import 'package:recipe_app/favourite/fav_screen.dart';

import '../view/recipe_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeContent(),
    FavScreen(favorites: []),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: screens[currentIndex],

      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: Colors.indigo,
        color: Colors.white70,
        activeColor: Colors.white,
        height: 60,

        items: const [
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.favorite, title: "Fav"),
          TabItem(icon: Icons.person, title: "Profile"),
        ],

        initialActiveIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
