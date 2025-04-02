

part of 'signup_bloc.dart';

class SignupState extends Equatable {
  final ApiResponse<dynamic> apiResponse;

  const SignupState({required this.apiResponse});

  SignupState copyWith({ApiResponse<dynamic>? apiResponse}) {
    return SignupState(apiResponse: apiResponse ?? this.apiResponse);
  }

  @override
  List<Object?> get props => [apiResponse];
}