import 'package:feedify/views/main_views/home_view/home_view.dart';
import 'package:feedify/views/main_views/main_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/splash_view/splash_view.dart';

class NavigationServices {

  /// private constructor of navigation service
  NavigationServices._privateConstructor();

  static final NavigationServices _instance = NavigationServices._privateConstructor();

  // Getter to access the singleton instance
  static NavigationServices get instance => _instance;

  late GlobalKey<NavigatorState> _navigationStateKey;

  // GlobalKey for navigation state
  final GlobalKey<NavigatorState> navigationStateKey = GlobalKey<NavigatorState>();


  static const String splashView = "/splashView";
  static const String mainView = "/mainView";
  static const String homeView = "/homeView";

  final Map<String, Widget Function(BuildContext context)> _routes = {
    splashView: (context) => const SplashView(),
    mainView: (context) => const MainView(),
    homeView: (context) => const HomeView(),
  };

  Map<String, Widget Function(BuildContext context)> get routes => _routes;

  void push({required MaterialPageRoute route}) {
    _navigationStateKey.currentState?.push(route);
  }

  void pushSimpleWithAnimationRoute({required Route route}) {
    _navigationStateKey.currentState?.push(route);
  }

  void pushCupertino({required CupertinoPageRoute route}) {
    _navigationStateKey.currentState?.push(route);
  }

  void pushReplacementCupertino({required CupertinoPageRoute route}) {
    _navigationStateKey.currentState?.pushReplacement(route);
  }

  void pushNamed({required String route}) {
    _navigationStateKey.currentState?.pushNamed(route);
  }

  void pushReplacementNamed({required String route}) {
    _navigationStateKey.currentState?.pushReplacementNamed(route);
  }

  dynamic goBack({dynamic object}) {
    if (_navigationStateKey.currentState!.canPop() == true) {
      _navigationStateKey.currentState?.pop(object);
    }
  }

  void goBackUntilFirstScreen() {
    _navigationStateKey.currentState?.popUntil((route) => route.isFirst);
  }
}
