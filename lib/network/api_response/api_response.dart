import 'package:feedify/core/constants/constants.dart';

class ApiResponse<T> {
  String? message;
  T? data;
  ApiStatus? apiStatus;

  ApiResponse({this.message, this.data, this.apiStatus = ApiStatus.initial});

  /// using initializer list syntax
  ApiResponse.initial() : apiStatus = ApiStatus.initial;

  ApiResponse.loading() : apiStatus = ApiStatus.loading;

  ApiResponse.success({required this.data}) : apiStatus = ApiStatus.success;

  ApiResponse.error({required this.message}) : apiStatus = ApiStatus.error;

  @override
  String toString() {
    return 'ApiResponse{message: $message, data: $data, apiStatus: $apiStatus}';
  }
}
