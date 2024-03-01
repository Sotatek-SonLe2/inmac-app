import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inmac_app/utils/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.notificationHow).existsSync(), isTrue);
    expect(File(Images.notificationWhat).existsSync(), isTrue);
    expect(File(Images.plus).existsSync(), isTrue);
    expect(File(Images.splash).existsSync(), isTrue);
  });
}
