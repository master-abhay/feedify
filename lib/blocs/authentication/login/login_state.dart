part of 'login_bloc.dart';

class LoginState extends Equatable {
  final ApiResponse<dynamic> apiResponse;

  const LoginState({required this.apiResponse});

  LoginState copyWith({ApiResponse<dynamic>? apiResponse}) {
    return LoginState(apiResponse: apiResponse ?? this.apiResponse);
  }

  @override
  List<Object?> get props => [apiResponse];
}
