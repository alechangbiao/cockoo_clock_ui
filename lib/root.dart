import 'package:cockoo_clock/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cockoo_clock/services/navigation_service.dart';
import 'package:cockoo_clock/screens/home/home_stack.dart';
import 'package:cockoo_clock/screens/play/play_stack.dart';
import 'package:cockoo_clock/screens/search/search_stack.dart';

class Root extends StatelessWidget {
  final List<Widget> _stacks = [
    HomeStack(),
    SearchStack(),
    PlayStack(),
  ];

  @override
  Widget build(BuildContext context) {
    NavigationService _nav = Provider.of<NavigationService>(context);

    return WillPopScope(
      onWillPop: () async =>
          !await _nav.currentNavigatorkey.currentState.maybePop(),
      child: Scaffold(
        body: IndexedStack(
          index: _nav.currentTabIndex,
          children: this._stacks,
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
