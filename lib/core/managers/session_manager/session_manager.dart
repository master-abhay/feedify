import 'dart:convert';
import 'package:feedify/core/managers/managers.dart';
import 'package:flutter/cupertino.dart';
import 'package:feedify/core/services/services.dart';
import 'package:feedify/models/models.dart';


class SessionController extends BaseSessionManager{
  @override
  Future<void> saveSessionData({required dynamic userData}) async{
    try{

     bool result =  await getIt<BaseStorageService>().saveValue(key: 'userData', value: jsonEncode(userData));
     bool result1 =  await getIt<BaseStorageService>().saveValue(key: 'isLoggedIn', value: 'true');
     if(result && result1){
       isLoggedIn = true;
       userModel = CommonPostRequestModel.fromJson(userData);
     }
    }catch(e){
      debugPrint("Something went wrong while writing session data");
    }
  }

  @override
  Future<bool> clearSessionData() async{
    try{
     final result =  await getIt<BaseStorageService>().deleteAllValues();
     if(result){
       isLoggedIn = false;
       userModel = null;
       return true;
     }
     return false;
    }catch(e){
      debugPrint("Something went wrong while clearing session data");
      return false;
    }
  }

  @override
  Future<bool> getSessionData() async {
    try {
      final isLoggedInValue = await getIt<BaseStorageService>().getValue(key: 'isLoggedIn');
      if (isLoggedInValue?.toLowerCase() == 'true') {
        final userData = await getIt<BaseStorageService>().getValue(key: 'userData');
        if (userData != null) {
          isLoggedIn = true;
          userModel = CommonPostRequestModel.fromJson(jsonDecode(userData));
          return true;
        }
      }
      return false;
    } catch (e, stackTrace) {
      debugPrint("Error in getSessionData: $e\n$stackTrace");
      return false;
    }
  }
}

