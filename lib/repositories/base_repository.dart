import 'package:feedify/network/network.dart';

abstract class BaseRepository {
  final DioBaseApiService dioApiService = DioNetworkApiService();

  getPosts();
}
