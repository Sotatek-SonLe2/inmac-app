import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/page_route_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inmac_app/common/widgets/background_widget.dart';
import 'package:inmac_app/common/widgets/im_button.dart';
import 'package:inmac_app/common/widgets/im_icon.dart';
import 'package:inmac_app/common/widgets/im_text.dart';
import 'package:inmac_app/common/widgets/im_text_button.dart';
import 'package:inmac_app/config/routes/app_router.dart';
import 'package:inmac_app/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:inmac_app/utils/resources/resources.dart';
import 'package:inmac_app/utils/style/app_colors.dart';
import 'package:inmac_app/utils/style/text_styles.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    showButtonSplash();
  }
Future<void> showButtonSplash() async {
  await Future.delayed(Duration(seconds: 2));
    setState(() {
      opacity = 1;
    });
}
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      color: AppColors.black2,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Center(
                    child: IMIcon(Images.logo, width: 314,)
                ),
                SizedBox(height: 30,),
                IMText(keyText: "Know others, know yourself to win", style: TextStyles.w500Grey16,),
                SizedBox(height: 50,),
                Spacer(),
                AnimatedOpacity(opacity: opacity,duration: Duration(milliseconds: 2000),child: IMButton(text: "ZIPPY 시작하기", textStyle: TextStyles.w600Black16, width: 500, height: 58, color: AppColors.mint2, radius: 20, onPressed: (){ appRouter.push(SignInRoute());}, disabled: false,)),
                SizedBox(height: 20,)
              ]
          ),
        )
      ),
    );
  }
}
