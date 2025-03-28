import 'package:feedify/core/services/navigation_services/route_names.dart';
import 'package:feedify/core/theme/app_themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/services/navigation_services/navigation_services.dart';
import 'core/services/navigation_services/routes.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedify',
      theme: lightTheme,
      navigatorKey: NavigationServices.instance.navigationStateKey,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: RouteNames.loginView,
    );
  }
}
