import 'package:flutter/material.dart';

class AppColors {
  static const black = Color(0xFF000000);
  static const qrColor = Color(0xffCBD5E1);
  static const primary = Color(0xFF000000);

  static const white = Color(0xFFFFFFFF);

  static const red = Colors.red;

  static const hint = Color(0xFF999999);

  static const blue = Color(0xFF470ECB);

  static final backgroundDialog = const Color(0xFF060616).withOpacity(0.9);

  static const gradientGoldBorderGachaResult = LinearGradient(colors: [
    Color(0xFFCD9443),
    Color(0xFFFDC760),
    Color(0xFFFDD079),
    Color(0xFFFDD78C),
    Color(0xFFFDD993),
    Color(0xFFFEEDAF),
    Color(0xFFFFFEE5)
  ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  static const blueGradient = LinearGradient(
      colors: [primary, qrColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static LinearGradient gradientWhiteBorderLeftToRight = LinearGradient(
      colors: [Colors.white.withOpacity(0), Colors.white.withOpacity(0.2)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  const AppColors._();
}
