import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class BaseStorageService {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  Future<bool> saveValue({required String key, required String value});

  Future<String?> getValue({required String key});

  Future<bool> deleteValue({required String key});

  Future<bool> deleteAllValues();
}
