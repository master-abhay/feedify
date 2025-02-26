import 'package:feedify/core/services/navigation_services.dart';
import 'package:feedify/core/theme/app_themes/light_theme.dart';
import 'package:feedify/views/splash_view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      navigatorKey: NavigationServices.instance.navigationStateKey,
      routes: NavigationServices.instance.routes,
      initialRoute: NavigationServices.mainView,
    );
  }
}
