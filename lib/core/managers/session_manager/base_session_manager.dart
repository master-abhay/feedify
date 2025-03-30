

import 'package:feedify/models/models.dart';
abstract class BaseSessionManager {
  bool isLoggedIn = false; // Default to false
  CommonPostRequestModel? userModel;

  /// Saves user session data
  Future<void> saveSessionData({required dynamic userData});

  /// Retrieves user session data
  Future<bool> getSessionData();

  /// Clears user session data
  Future<bool> clearSessionData(); // No need to return `bool`
}