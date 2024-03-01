import 'package:flutter/material.dart';
import 'package:inmac_app/utils/style/text_styles.dart';

class IMText extends Text {
  const IMText({
    required String keyText,
    String suffix = '',
    String prefix = '',
    Map<String, String>? namedArgs,
    TextStyle? style,
    TextAlign? textAlign,
    Key? key,
    int? maxLines,
    bool? softWrap,
    TextOverflow? overflow,
  }) : super(
      prefix + keyText + suffix,
      style: style ?? TextStyles.textBasic15,
      textAlign: textAlign,
      maxLines: maxLines,
      key: key,
      overflow: overflow,
      softWrap: softWrap
  );
}
