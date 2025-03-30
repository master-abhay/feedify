import 'package:feedify/l10N/app_localizations.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this) ?? (throw Exception('Localization not found'));

}

