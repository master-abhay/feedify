
import 'package:feedify/controller/internet/internet_controller.dart';
import 'package:feedify/repositories/base_repository.dart';
import 'package:feedify/repositories/mock_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:feedify/core/services/services.dart';

final GetIt getIt = GetIt.instance;
class ServiceLocator {
  void init() {
    try {

/*      Registering Factories
      If you need a new instance of a class each time you call it, use registerFactory:
    locator.registerFactory<MyModel>(() => MyModelImpl());


    Asynchronous Dependencies
    For dependencies requiring async initialization, get_it offers registerSingletonAsync:

    locator.registerSingletonAsync<DatabaseService>(() async {
    var service = DatabaseService();
    await service.init();
    return service;
    });


    Scoped Access
    get_it also supports creating scopes, allowing you to manage different instances of the same class in different parts of your app:

    var newScope = locator.createScope('scope1');
    newScope.registerLazySingleton<MyModel>(() => MyModelImpl());*/



      getIt.registerSingleton<BaseNavigationService>(NavigationService());
      getIt.registerLazySingleton<InternetController>(() => InternetController());
      getIt.registerLazySingleton<BaseMediaService>(() => MediaService());
      getIt.registerLazySingleton<BaseAlertService>(() => SnackBarAlertService());
      getIt.registerLazySingleton<BaseStorageService>(() => StorageService());
      getIt.registerLazySingleton<BaseRepository>(() => MockRepository());

      debugPrint("Is NavigationServices registered? ${getIt.isRegistered<BaseNavigationService>()}");
      debugPrint("Is MediaServices registered? ${getIt.isRegistered<BaseMediaService>()}");
      debugPrint("Is AlertServices registered? ${getIt.isRegistered<BaseAlertService>()}");
      debugPrint("Is StorageServices registered? ${getIt.isRegistered<BaseStorageService>()}");
      debugPrint("Is Repository registered? ${getIt.isRegistered<BaseRepository>()}");
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
