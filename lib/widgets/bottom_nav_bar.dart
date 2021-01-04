import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cockoo_clock/services/navigation_service.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationService _nav = Provider.of<NavigationService>(context);

    return BottomNavigationBar(
      currentIndex: _nav.currentTabIndex,
      onTap: (index) => _nav.tabIndex = index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: 'Play',
        ),
      ],
    );
  }
}
