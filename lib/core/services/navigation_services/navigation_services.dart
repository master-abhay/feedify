import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationServices {
  /// private constructor of navigation service
  NavigationServices._privateConstructor();

  static final NavigationServices _instance = NavigationServices._privateConstructor();

  // Getter to access the singleton instance
  static NavigationServices get instance => _instance;

  // GlobalKey for navigation state
  final GlobalKey<NavigatorState> navigationStateKey = GlobalKey<NavigatorState>();

  void push({required Route route}) {
    navigationStateKey.currentState?.push(route);
  }

  void pushReplacement({required Route route}) {
    navigationStateKey.currentState?.pushReplacement(route);
  }

  void pushNamed({required String route, Object? arguments}) {
    navigationStateKey.currentState?.pushNamed(route, arguments: arguments);
  }

  void pushReplacementNamed({required String route, Object? arguments}) {
    navigationStateKey.currentState?.pushReplacementNamed(route, arguments: arguments);
  }

  Object? goBack({Object? object}) {
    if (navigationStateKey.currentState!.canPop() == true) {
      navigationStateKey.currentState?.pop(object);
    } else {
      debugPrint("Cannot go back :(");
    }
    return null;
  }

  void goBackUntilFirstScreen() {
    navigationStateKey.currentState?.popUntil((route) => route.isFirst);
  }
}
