import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:inmac_app/domain/repository/auth_repository/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/local/get_storage_datasource.dart';
import 'data/datasource/local/secure_storage.dart';
import 'data/datasource/remote/auth_datasource/auth_datasource.dart';
import 'data/datasource/remote/auth_datasource/auth_interceptor.dart';
import 'data/datasource/remote/auth_datasource/queue_interceptor.dart';
import 'data/implementation/auth_implementation/auth_implementation.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {

  final dio = Dio();
  GetStorage getStorage = GetStorage();
  const FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final SecureStorage secureStorage =
      SecureStorage(flutterSecureStorage, prefs);
  final GetStorageDataSource getStorageDataSource =
      GetStorageDataSource(getStorage);
  dio.interceptors.addAll([
    AuthInterceptor(secureStorage, dio),
    QueueInterceptor(dio, secureStorage),
  ]);

  locator.registerSingleton<Dio>(dio);

  locator.registerSingleton<AuthDataSource>(
    AuthDataSource(locator<Dio>()),
  );

  locator.registerSingleton<IAuthRepository>(
    AuthImplementation(
        secureStorage, locator<AuthDataSource>(), getStorageDataSource, prefs),
  );

}
