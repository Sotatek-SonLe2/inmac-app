import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:inmac_app/utils/style/app_colors.dart';
import 'package:inmac_app/utils/style/text_styles.dart';
import 'package:oktoast/oktoast.dart';

@Injectable()
class ToastCommon {
  static void showDIToast(String content) {
    showToast(content,
        textStyle: TextStyles.w400Black11,
        textAlign: TextAlign.start,
        position: const ToastPosition(align: Alignment.bottomCenter, offset: -80.0),
        backgroundColor: AppColors.primary,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        radius: 6,
        textPadding: const EdgeInsets.all(10));
  }

  static void showDIErrorToast(String content) {
    showToast(content,
        textStyle: TextStyles.w400Black11,
        textAlign: TextAlign.start,
        position: const ToastPosition(align: Alignment.bottomCenter, offset: -80.0),
        backgroundColor: Colors.red,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        radius: 6,
        duration:const Duration(seconds: 10),
        textPadding: const EdgeInsets.all(10));
  }

}
