import 'package:flutter/material.dart';

class NavigationService with ChangeNotifier {
  static final kHomeStack = GlobalKey<NavigatorState>();
  static final kSearchStack = GlobalKey<NavigatorState>();
  static final kPlayStack = GlobalKey<NavigatorState>();

  static final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    kHomeStack,
    kSearchStack,
    kPlayStack,
  ];

  static int _currentTabIndex = 0;

  static GlobalKey<NavigatorState> get currentStack {
    return _navigatorKeys[_currentTabIndex];
  }

  static NavigatorState get currentStackState {
    return currentStack.currentState;
  }

  List<GlobalKey<NavigatorState>> get navigatorKeys => _navigatorKeys;

  GlobalKey<NavigatorState> get currentNavigatorkey =>
      _navigatorKeys[_currentTabIndex];

  int get currentTabIndex => _currentTabIndex;

  set tabIndex(int newIndex) {
    _currentTabIndex != newIndex
        ? _currentTabIndex = newIndex
        : currentStack.currentState.popUntil((route) => route.isFirst);
    notifyListeners();
  }
}
