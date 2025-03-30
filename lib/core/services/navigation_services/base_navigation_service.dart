import 'package:flutter/cupertino.dart';

abstract class BaseNavigationService {
  // GlobalKey for navigation state
  final GlobalKey<NavigatorState> navigationStateKey = GlobalKey<NavigatorState>();

  void push({required Route route});

  void pushReplacement({required Route route});

  void pushNamed({required String route, Object? arguments});

  void pushReplacementNamed({required String route, Object? arguments});

  Object? goBack({Object? object});

  void goBackUntilFirstScreen();
}
