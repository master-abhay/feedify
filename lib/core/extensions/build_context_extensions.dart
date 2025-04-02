import 'package:feedify/l10N/app_localizations.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {

  ThemeData get theme => Theme.of(this)!;

  AppLocalizations get l10n => AppLocalizations.of(this) ?? (throw Exception('Localization not found'));
}

