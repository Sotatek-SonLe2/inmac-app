import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<String?> getDeviceId() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String? deviceId;
  try {
    if (Platform.isAndroid) {
      var deviceData = await deviceInfoPlugin.androidInfo;
      deviceId = deviceData.id;
    } else if (Platform.isIOS) {
      var deviceData = await deviceInfoPlugin.iosInfo;
      deviceId = deviceData.identifierForVendor;
    } else if (Platform.isLinux) {
      var deviceData = await deviceInfoPlugin.linuxInfo;
      deviceId = deviceData.id;
    }
    return deviceId;
    // else if (Platform.isMacOS) {
    //   deviceData = _readMacOsDeviceInfo(await deviceInfoPlugin.macOsInfo);
    // } else if (Platform.isWindows) {
    //   deviceData =
    //       _readWindowsDeviceInfo(await deviceInfoPlugin.windowsInfo);
    // }
  } on PlatformException {
    // deviceData = <String, dynamic>{
    //   'Error:': 'Failed to get platform version.'
    // };
    debugPrint('Failed to get platform version');
  }
  return null;
}
