// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get test => 'test eng';

  @override
  String get appName => 'Feedify';

  @override
  String get appSlogan => 'Order Your Favorite Food!';

  @override
  String get greetingText => 'Welcome to Foodie Express!';
}
