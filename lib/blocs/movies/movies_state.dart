part of 'movies_bloc.dart';


class MoviesState extends Equatable {
  final ApiResponse<CommonPostRequestModel> getMoviesModel;

  const MoviesState({required this.getMoviesModel});

  MoviesState copyWith({ApiResponse<CommonPostRequestModel>? getMoviesModel}) {
    return MoviesState(getMoviesModel: getMoviesModel ?? this.getMoviesModel);
  }

  @override
  List<Object?> get props => [getMoviesModel];
}
