import 'package:feedify/views/main_views/home_view/home_view.dart';
import 'package:feedify/views/main_views/main_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/authentication_views/login_view.dart';
import '../../views/splash_view/splash_view.dart';

class NavigationServices {

  /// private constructor of navigation service
  NavigationServices._privateConstructor();

  static final NavigationServices _instance = NavigationServices._privateConstructor();

  // Getter to access the singleton instance
  static NavigationServices get instance => _instance;


  // GlobalKey for navigation state
  final GlobalKey<NavigatorState> navigationStateKey = GlobalKey<NavigatorState>();


  static const String splashView = "/splashView";
  static const String loginView = "/loginView";
  static const String mainView = "/mainView";
  static const String homeView = "/homeView";

  final Map<String, Widget Function(BuildContext context)> _routes = {
    splashView: (context) => const SplashView(),
    loginView: (context) => const LoginView(),
    mainView: (context) => const MainView(),
    homeView: (context) => const HomeView(),
  };

  Map<String, Widget Function(BuildContext context)> get routes => _routes;

  void push({required MaterialPageRoute route}) {
    navigationStateKey.currentState?.push(route);
  }

  void pushSimpleWithAnimationRoute({required Route route}) {
    navigationStateKey.currentState?.push(route);
  }

  void pushCupertino({required CupertinoPageRoute route}) {
    navigationStateKey.currentState?.push(route);
  }

  void pushReplacementCupertino({required CupertinoPageRoute route}) {
    navigationStateKey.currentState?.pushReplacement(route);
  }

  void pushNamed({required String route,Object? arguments}) {
    navigationStateKey.currentState?.pushNamed(route,arguments: arguments);
  }

  void pushReplacementNamed({required String route,Object? arguments}) {
    navigationStateKey.currentState?.pushReplacementNamed(route,arguments: arguments);
  }

  dynamic goBack({dynamic object}) {
    if (navigationStateKey.currentState!.canPop() == true) {
      navigationStateKey.currentState?.pop(object);
    }else{
      debugPrint("Cannot go back :(");
    }
  }

  void goBackUntilFirstScreen() {
    navigationStateKey.currentState?.popUntil((route) => route.isFirst);
  }
}
