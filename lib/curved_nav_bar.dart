import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60,
      color: Colors.white.withOpacity(0.3),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.transparent,
      items: [
        BottomBarItem(
          selectedIndex: selectedIndex,
          index: 0,
          active: 'diamond_gold',
          passive: 'diamond',
        ),
        BottomBarItem(
          selectedIndex: selectedIndex,
          index: 1,
          active: 'menu_gold',
          passive: 'menu',
        ),
        BottomBarItem(
          selectedIndex: selectedIndex,
          index: 2,
          active: 'download_gold',
          passive: 'download',
        ),
        BottomBarItem(
          selectedIndex: selectedIndex,
          index: 3,
          active: 'trolley_gold',
          passive: 'trolley',
        ),
        BottomBarItem(
          selectedIndex: selectedIndex,
          index: 4,
          active: 'nut_gold',
          passive: 'nut',
        ),
      ],
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    Key? key,
    required this.selectedIndex,
    required this.index,
    required this.active,
    required this.passive,
  }) : super(key: key);

  final int selectedIndex;
  final int index;
  final String active;
  final String passive;

  @override
  Widget build(BuildContext context) {
    return selectedIndex == index
        ? SizedBox(
            width: 35,
            height: 35,
            child: Image.asset(
              'assets/icons/$active.png',
            ))
        : SizedBox(
            width: 23,
            height: 23,
            child: Image.asset(
              'assets/icons/$passive.png',
            ));
  }
}
