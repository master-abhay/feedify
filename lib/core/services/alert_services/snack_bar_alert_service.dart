
import 'package:feedify/core/extensions/build_context_extensions.dart';

import 'alert_services.dart';
import 'package:flutter/material.dart';
class SnackBarAlertService extends BaseAlertService {
  @override
  void showAlert(String message, {String? title}) {
    _showSnackBar(message);
  }

  @override
  void showErrorAlert(String message, {Duration? duration}) {

    _showSnackBar(message, backgroundColor: Colors.red);
  }

  @override
  void showSuccessAlert(String message) {
    _showSnackBar(message, backgroundColor: Colors.green);
  }

  void _showSnackBar(String message, {Color backgroundColor = Colors.black, Duration? duration}) {

    if (appContext == null) return;
    ScaffoldMessenger.of(appContext!)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(message,style: appContext?.theme.textTheme.bodyMedium?.copyWith(color: Colors.white),),
          backgroundColor: backgroundColor,
          duration: duration ?? const Duration(seconds: 3),
        ),
      );
  }
}
