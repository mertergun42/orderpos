
import 'package:get_it/get_it.dart';
import 'package:orderpos/services/hive_client.dart';
import 'package:orderpos/services/laravel_api_client.dart';

import '../bloc/index/index_cubit.dart';
import '../bloc/initial/initial_cubit.dart';
import '../repository/account_repository.dart';
import '../repository/content_repository.dart';
import '../repository/request_repository.dart';
import '../repository/user_repository.dart';
import '../services/content_services.dart';
import '../services/user_services.dart';

GetIt locator = GetIt.asNewInstance();

void setupLocator() {
  locator.registerLazySingleton(() => AccountRepository());
  locator.registerLazySingleton(() => RequestRepository());
  locator.registerLazySingleton(() => UserRepository());
  locator.registerLazySingleton(() => ContentRepository());

  locator.registerLazySingleton(() => UserServices());
  locator.registerLazySingleton(() => ContentServices());

  locator.registerLazySingleton(() => LaravelApiClient());
  locator.registerLazySingleton(() => HiveClient());

  locator.registerLazySingleton(() => InitialCubit());
  locator.registerLazySingleton(() => IndexCubit());
}
