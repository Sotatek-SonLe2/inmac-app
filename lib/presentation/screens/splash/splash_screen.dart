import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:inmac_app/common/widgets/background_widget.dart';
import 'package:inmac_app/common/widgets/im_icon.dart';
import 'package:inmac_app/utils/resources/resources.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Container(
          color: const Color(0xFF333333),
          child: const IMIcon(Images.splash)),
    );
  }
}
