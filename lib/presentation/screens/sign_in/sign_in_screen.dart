import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:inmac_app/common/widgets/background_widget.dart';
import 'package:inmac_app/common/widgets/im_button.dart';
import 'package:inmac_app/common/widgets/im_text.dart';
import 'package:inmac_app/common/widgets/im_text_button.dart';
import 'package:inmac_app/common/widgets/im_textfield.dart';
import 'package:inmac_app/utils/style/text_styles.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BackgroundWidget(
      child: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const IMText(keyText: "INMAC", style: TextStyles.w600White40,),
              const IMText(keyText: "Please enter a one-line slogan", style: TextStyle(color: Colors.white),),
              const SizedBox(height: 60,),
              const IMTextField(),
              const SizedBox(height: 20,),
              const IMTextField(),
              const SizedBox(height: 20,),
              IMButton(
                text: 'Login',
                width: MediaQuery.of(context).size.width,
                onPressed: () {
                debugPrint("LOGIN IN MAC");
              },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IMTextButton(text: "Join The Membership", textStyle: TextStyles.w600grey12, onPressed: () {},),
                  const SizedBox(width: 4,),
                  const IMText(keyText: "|", style: TextStyles.w400Grey12,),
                  const SizedBox(width: 4,),
                  IMTextButton(text: "Forgot Password", textStyle: TextStyles.w600grey12, onPressed: () {},),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
