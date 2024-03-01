import 'package:flutter/material.dart';
import 'package:inmac_app/utils/enum/enum.dart';

import 'im_text.dart';

class IMTextButton extends StatelessWidget {
  const IMTextButton(
      {required this.text,
        this.textStyle,
        this.onPressed,
        Key? key})
      : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: IMText(
        keyText: text,
        style: textStyle,
      ),
    );
  }
}