import 'package:flutter/material.dart';
import 'package:inmac_app/utils/style/app_colors.dart';

class IMCheckBox extends Checkbox {
  const IMCheckBox({
    Key? key,
    required bool value,
    ValueChanged<bool?>? onChanged,
    Color? activeColor,
    Color? checkColor,
    OutlinedBorder? shape,
    BorderSide? side = const BorderSide(color: AppColors.black, width: 2),
  }) : super(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      checkColor: checkColor,
      shape: shape,
      side: side,
      key: key,
  );
}