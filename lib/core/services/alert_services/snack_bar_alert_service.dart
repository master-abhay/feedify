
import 'alert_services.dart';
import 'package:flutter/material.dart';

class SnackBarAlertService extends BaseAlertService {
  @override
  void showAlert(String message, {String? title}) {
    _showSnackBar(message);
  }

  @override
  void showErrorAlert(String message,{Duration? duration}) {
    _showSnackBar(message, backgroundColor: Colors.red);
  }

  @override
  void showSuccessAlert(String message) {
    _showSnackBar(message, backgroundColor: Colors.green);
  }

  void _showSnackBar(String message, {Color backgroundColor = Colors.black, Duration? duration}) {
    if (context == null) return;

    ScaffoldMessenger.of(context!)..hideCurrentSnackBar()..showSnackBar(
      SnackBar(content: Text(message), backgroundColor: backgroundColor,duration: duration ?? const Duration(seconds: 3),),
    );
  }
}
