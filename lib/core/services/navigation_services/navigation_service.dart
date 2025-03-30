import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_services.dart';


class NavigationService extends BaseNavigationService{

  @override
  void push({required Route route}) {
    navigationStateKey.currentState?.push(route);
  }

  @override
  void pushReplacement({required Route route}) {
    navigationStateKey.currentState?.pushReplacement(route);
  }

  @override
  void pushNamed({required String route, Object? arguments}) {
    navigationStateKey.currentState?.pushNamed(route, arguments: arguments);
  }

  @override
  void pushReplacementNamed({required String route, Object? arguments}) {
    navigationStateKey.currentState?.pushReplacementNamed(route, arguments: arguments);
  }

  @override
  Object? goBack({Object? object}) {
    if (navigationStateKey.currentState!.canPop() == true) {
      navigationStateKey.currentState?.pop(object);
    } else {
      debugPrint("Cannot go back :(");
    }
    return null;
  }

  @override
  void goBackUntilFirstScreen() {
    navigationStateKey.currentState?.popUntil((route) => route.isFirst);
  }

}
