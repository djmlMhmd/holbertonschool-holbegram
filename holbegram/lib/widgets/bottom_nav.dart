import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:holbegram/screens/pages/add_image.dart';
import 'package:holbegram/screens/pages/favorate.dart';
import 'package:holbegram/screens/pages/feed.dart';
import 'package:holbegram/screens/pages/profile_screen.dart';
import 'package:holbegram/screens/pages/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          Feed(),
          Search(),
          AddImage(),
          Favorite(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text(
              'Home',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 25),
              textAlign: TextAlign.center,
            ),
            activeColor: const Color.fromARGB(218, 226, 37, 24),
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.search),
            title: const Text(
              'Search',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 25),
              textAlign: TextAlign.center,
            ),
            activeColor: const Color.fromARGB(218, 226, 37, 24),
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.add_circle_outline),
            title: const Text(
              'Add',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 25),
              textAlign: TextAlign.center,
            ),
            activeColor: const Color.fromARGB(218, 226, 37, 24),
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text(
              'Favorite',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 25),
              textAlign: TextAlign.center,
            ),
            activeColor: const Color.fromARGB(218, 226, 37, 24),
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person_outline),
            title: const Text(
              'Profile',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 25),
              textAlign: TextAlign.center,
            ),
            activeColor: const Color.fromARGB(218, 226, 37, 24),
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
