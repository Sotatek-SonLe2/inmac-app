import 'package:flutter/material.dart';
import 'package:inmac_app/utils/style/app_colors.dart';

import 'im_icon.dart';
import 'im_text.dart';

class IMButton extends StatelessWidget {
  const IMButton({
    required this.text,
    this.textStyle,
    this.onPressed,
    this.width,
    this.height,
    this.color,
    this.disabled = false,
    this.radius = 6,
    this.gradient,
    this.iconRight,
    Key? key,
    this.borderColor,
  }) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Color? borderColor;
  final double radius;
  final bool disabled;
  final LinearGradient? gradient;
  final String? iconRight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height ?? 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: borderColor ?? (disabled ? AppColors.hint : AppColors.blue)),
            gradient: gradient,
          ),
          child: ElevatedButton(
            onPressed: disabled ? null : onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              disabledBackgroundColor: AppColors.white,
              backgroundColor: gradient == null
                  ? color ?? (disabled ? AppColors.white : AppColors.blue)
                  : null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              // shape: MaterialStateProperty.all(
              //   RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(radius),
              //   ),
              // ),
            ),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IMText(
                    keyText: text,
                    style:  textStyle ?? (disabled ?
                    const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.hint) :
                    const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white)),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  if (iconRight != null)
                    IMIcon(
                      iconRight!,
                      width: 18,
                      color: AppColors.primary,
                    ),
                ],
              ),
            ),
          ),
        ),
        // if (disabled)
        //   Container(
        //     width: width,
        //     height: height ?? 56,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(radius),
        //       color: AppColors.dark.withOpacity(0.4),
        //     ),
        //   ),
      ],
    );
  }
}