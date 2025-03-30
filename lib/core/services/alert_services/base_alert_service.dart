
import 'package:feedify/core/services/services.dart';
abstract class BaseAlertService {
  final context = getIt<BaseNavigationService>().navigationStateKey.currentState?.context;
  void showAlert(String message, {String? title});
  void showErrorAlert(String message,{Duration? duration});
  void showSuccessAlert(String message);
}
