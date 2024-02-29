import 'dart:developer';
import 'dart:io';

// import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:inmac_app/data/datasource/local/secure_storage.dart';

// @Injectable()
class AuthInterceptor extends Interceptor {
  final SecureStorage _secureStorage;
  final Dio dio;
  // final DeviceInfoPlugin _deviceInfoPlugin;

  AuthInterceptor(this._secureStorage, this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    await _handleRequestOptions(options);
    super.onRequest(options, handler);
  }

  Future<void> _handleRequestOptions(RequestOptions options) async {
    // final deviceInfo = Platform.isIOS
    //     ? await _deviceInfoPlugin.iosInfo
    //     : await _deviceInfoPlugin.androidInfo;
    final token = await _secureStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    options.headers['x-api-key'] = 'development';
    options.headers['version'] = '1.1';
    // if (F.appFlavor == Flavor.dev) {
    //   options.headers['passwaf'] = '1';
    // }
    // if (deviceInfo is AndroidDeviceInfo) {
    //   options.headers['Device-Id'] = deviceInfo.id;
    // } else if (deviceInfo is IosDeviceInfo) {
    //   options.headers['Device-Id'] = '${deviceInfo.identifierForVendor}';
    // }
    debugPrint('### ${options.uri}');
    log('### data ${options.data}');
    log('### accessToken $token');
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('### response data ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('### Error $err');
    final error = err.error;
    // if (error is List<dynamic>) {
    //   final res = json['message'] as List<dynamic>;
    //   return ErrorResponseInfo(message: res.join(", "));
    // } else {
    //   return ErrorResponseInfo(message: json['message']);
    // }
    if (error is SocketException) {
      if (error.osError?.message
              .toLowerCase()
              .contains('no address associated') ??
          false) {}
    }
    super.onError(err, handler);
  }
}
