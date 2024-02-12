import 'package:get_it/get_it.dart';
import 'package:logistics_app/core/data/local/local_cache.dart';
import 'package:logistics_app/core/data/local/local_cache_impl.dart';
import 'package:logistics_app/core/data/remote/auth/auth_interface.dart';
import 'package:logistics_app/core/data/remote/auth/auth_repository.dart';
import 'package:logistics_app/core/data/remote/auth/auth_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);

  locator.registerLazySingleton<LocalCache>(
    () => LocalCacheImpl(
      sharedPreferences: sharedPreferences,
    ),
  );

  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryimpl(),
  );

  locator.registerLazySingleton<AuthService>(
    () => AuthServiceImpl(),
  );
}
