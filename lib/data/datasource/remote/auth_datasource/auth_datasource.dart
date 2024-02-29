import 'dart:io';

import 'package:dio/dio.dart';
import 'package:inmac_app/utils/constants/strings.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_datasource.g.dart';

// @Injectable()
@RestApi(baseUrl: "${Const.baseApi}/api/v1")
abstract class AuthDataSource {
  // @factoryMethod
  // factory AuthDataSource(
  //   Dio dio,
  //   AuthInterceptor authInterceptor,
  //   QueueInterceptor queueInterceptor,
  // ) {
  //   dio.interceptors.addAll([
  //     authInterceptor,
  //     queueInterceptor,
  //   ]);
  //   return _AuthDataSource(dio);
  // }

  factory AuthDataSource(Dio dio) = _AuthDataSource;

  /// auth
  @POST('/auth/login')
  Future<dynamic> signIn();

  @POST('/auth/register')
  Future<dynamic> signUp();

  @GET('/auth/about-me')
  Future<dynamic> aboutMe();

}
