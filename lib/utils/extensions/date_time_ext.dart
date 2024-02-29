import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

// ignore_for_file: non_constant_identifier_names
@Injectable()
class DateTimeExtension {

  DateTime startOfWeek(DateTime time) {
    final int currentDay = time.weekday;
    return time.subtract(Duration(days: currentDay - 1));
  }

  DateTime endOfWeek(DateTime time, {bool checkNow = false}) {
    final int currentDay = time.weekday;
    if (checkNow) {
      final now = DateTime.now();
      if (now.isBefore(time) || now.isAtSameMomentAs(time)) return now;
    }
    return time.add(Duration(days: DateTime.daysPerWeek - currentDay));
  }

  DateTime startOfMonth(DateTime time) {
    return DateTime(time.year, time.month, 1);
  }

  DateTime endOfMonth(DateTime time, {bool checkNow = false}) {
    if (checkNow) {
      final now = DateTime.now();
      if (now.isBefore(time) || now.isAtSameMomentAs(time)) {
        return DateTime(now.year, now.month, now.day);
      }
    }
    return DateTime(time.year, time.month + 1, 0);
  }

}
