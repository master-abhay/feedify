import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:feedify/network/network.dart';
import 'package:flutter/cupertino.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {





  SignupBloc() : super(SignupState(apiResponse: ApiResponse.initial())) {
    on<SignupButtonEvent>(_signup);
  }

  void _signup(SignupButtonEvent event, Emitter<SignupState> emit)async{
    try{
      emit(state.copyWith(apiResponse: ApiResponse.loading()));

      /// call to login


      emit(state.copyWith(apiResponse: ApiResponse.success(data: "Success")));


    }catch(e){
      debugPrint(e.toString());
      emit(state.copyWith(apiResponse: ApiResponse.error(message: e.toString())));
    }
  }
}
