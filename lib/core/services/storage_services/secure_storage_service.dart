import 'package:flutter/cupertino.dart';
import 'storage_services.dart';


class StorageService extends BaseStorageService {
  @override
  Future<bool> deleteValue({required String key}) async {
    try {
      await secureStorage.delete(key: key);
      return true;
    } catch (e) {
      debugPrint("Error in deleting value: $e");
      return false;
    }
  }

  @override
  Future<String?> getValue({required String key}) async {
    try {
      return await secureStorage.read(key: key);
    } catch (e) {
      debugPrint("Error in getting value: $e");
      return '';
    }
  }

  @override
  Future<bool> saveValue({required String key, required String value}) async {
    try {
      await secureStorage.write(key: key, value: value);
      return true;
    } catch (e) {
      debugPrint("Error in saving value: $e");
      return false;
    }
  }

  @override
  Future<bool> deleteAllValues() async {
    try {
      await secureStorage.deleteAll();
      return true;
    } catch (e) {
      debugPrint("Error in deleting all values: $e");
      return false;
    }
  }

}
