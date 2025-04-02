import 'package:feedify/controller/internet/internet_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:feedify/core/services/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/themes/themes.dart';
import 'firebase_options.dart';
import 'l10N/app_localizations.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  /// add firebase options here
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ServiceLocator().init();  /// initialize service locator
  getIt<InternetController>().init(); /// initialize internet controller
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<BaseNavigationService>().navigationStateKey,
      title: 'Feedify',
      // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.system, // Automatically picks light/dark based on device settings
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates:  const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: const Locale('en'),
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: RouteNames.splashView,
    );
  }
}
