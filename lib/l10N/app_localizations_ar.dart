// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get test => 'test arb';

  @override
  String get appName => 'Feedify';

  @override
  String get appSlogan => 'Order Your Favorite Food!';

  @override
  String get greetingText => 'Welcome to Foodie Express!';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'Enter your email';

  @override
  String get password => 'Password';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get forgotYourPassword => 'Forgot you password?';

  @override
  String get login => 'Login';

  @override
  String get loginInCaps => 'LOGIN';

  @override
  String get loginTooltip => 'Press to login';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get doNotHaveAnAccount => 'Don\'t have an account?';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signUpTooltip => 'Press to sign up';

  @override
  String get signUpInCaps => 'SIGN UP';
}
