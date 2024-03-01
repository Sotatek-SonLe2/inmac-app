import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:inmac_app/utils/resources/resources.dart';

void main() {
  test('ics assets test', () {
    expect(File(Ics.arrowLeft).existsSync(), isTrue);
    expect(File(Ics.icVisible).existsSync(), isTrue);
    expect(File(Ics.keyLock).existsSync(), isTrue);
    expect(File(Ics.person).existsSync(), isTrue);
    expect(File(Ics.warning).existsSync(), isTrue);
  });
}
