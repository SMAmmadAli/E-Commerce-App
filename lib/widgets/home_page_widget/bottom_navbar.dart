import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:st_store/utils/color.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  int _pageController = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
                icon: const Icon(Icons.bungalow_outlined),
                title: const Text('Home'),
                activeColor: MyColors.gold,
                inactiveColor: MyColors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.search),
                title: const Text('Search'),
                activeColor: MyColors.gold,
                inactiveColor: MyColors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.shopping_bag_outlined),
                title: const Text('Shapping'),
                activeColor: MyColors.gold,
                inactiveColor: MyColors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Profile'),
                activeColor: MyColors.gold,
                inactiveColor: MyColors.black),
          ],
        )
        // BottomNavigationBar(
        //     showSelectedLabels: true,
        //     currentIndex: 0,
        //     elevation: 0,
        //     fixedColor: Colors.white,
        //     unselectedItemColor: Colors.black,
        //     items: const <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home_filled, size: 18),
        //         label: "Home",
        //       ),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.search, size: 18), label: "Search"),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.shopping_bag_outlined, size: 18),
        //           label: 'Shapping'),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person, size: 18),
        //         label: "Profile",
        //       ),
        //     ])
      ],
    );
  }
}
