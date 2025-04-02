
import 'package:feedify/core/services/services.dart';
import 'package:flutter/cupertino.dart';
abstract class BaseAlertService {


 final appContext = getIt<BaseNavigationService>().navigationStateKey?.currentState?.context;

  void showAlert(String message, {String? title});
  void showErrorAlert(String message,{Duration? duration});
  void showSuccessAlert(String message);
}
