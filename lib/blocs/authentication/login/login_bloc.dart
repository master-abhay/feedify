import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:feedify/network/network.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState(apiResponse: ApiResponse.initial())) {
    on<LoginButtonEvent>(_loginButtonEvent);
  }


  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void _loginButtonEvent(LoginButtonEvent event, Emitter<LoginState> emit)async{
    try{
      emit(state.copyWith(apiResponse: ApiResponse.loading()));

      /// call to login
      await firebaseAuth.signInWithEmailAndPassword(email: event.email, password: event.password);


      emit(state.copyWith(apiResponse: ApiResponse.success(data: "Login Successful")));


    } on FirebaseAuthException catch(e){
      debugPrint("Print: ${e.code}");
      emit(state.copyWith(apiResponse: ApiResponse.error(message: e.code.replaceAll('-', ' ').toString())));
    }
  }
}
