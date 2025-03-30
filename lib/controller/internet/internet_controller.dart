import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:feedify/core/services/services.dart';


class InternetController {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _subscription;
  // Variable to hold current connection status
  // set initial true to prevent unnecessary bugs
  // var isConnected = true.obs;

 void init(){
    _subscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(List<ConnectivityResult> results) {
    if (results.isEmpty || results.contains(ConnectivityResult.none)) {
      // No network connection available
      getIt<BaseAlertService>().showErrorAlert("PLEASE CONNECT TO THE INTERNET",duration: const Duration(days: 1),);
    } else{
      // Network connection available
      getIt<BaseAlertService>().showSuccessAlert("YOU ARE CONNECTED TO THE INTERNET");
    }
  }

  // @override
  // void onClose() {
  //   _subscription.cancel();
  //   super.onClose();
  // }

}