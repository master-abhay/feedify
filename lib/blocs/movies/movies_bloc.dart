

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:feedify/network/network.dart';
import 'package:feedify/core/services/services.dart';
import 'package:feedify/repositories/repositories.dart';
import 'package:flutter/cupertino.dart';
import 'package:feedify/models/models.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesState(getMoviesModel: ApiResponse.initial())) {
    on<GetMoviesEvent>(_getMovies);
  }


  void _getMovies(GetMoviesEvent event, Emitter<MoviesState> emit)async{
    try{
      emit(state.copyWith(getMoviesModel: ApiResponse.loading()));

      final response = await getIt<BaseRepository>().getPosts();

      emit(state.copyWith(getMoviesModel: ApiResponse.success(data: response)));
    }catch(e){
      debugPrint(e.toString());
      emit(state.copyWith(getMoviesModel: ApiResponse.error(message: e.toString())));
    }
  }
}
