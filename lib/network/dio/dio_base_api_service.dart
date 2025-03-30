import 'package:dio/dio.dart';

abstract class DioBaseApiService {
  Future<dynamic> dioGetApiService({
    required String url,
    required Map<String, String> headers,
    Map<String, String>? queryParams, // Optional query parameters
    dynamic responseType,
  });

  Future<dynamic> dioPostApiService({
    required String url,
    required Map<String, String> headers,
    required dynamic body,
  });

  Future<dynamic> dioPutApiService({
    required String url,
    required Map<String, String> headers,
    required dynamic body,
  });

  Future<dynamic> dioDeleteApiService({
    required String url,
    required Map<String, String> headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> dioMultipartApiService({
    required String method,
    required String url,
    required FormData data,
    required Map<String, String> headers,
    Map<String, String>? queryParams,
  });
}
