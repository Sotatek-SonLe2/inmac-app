import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:inmac_app/common/widgets/background_widget.dart';
import 'package:inmac_app/common/widgets/im_icon.dart';
import 'package:inmac_app/common/widgets/im_text.dart';
import 'package:inmac_app/utils/resources/resources.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const IMIcon(Images.logo, width: 220),
                IMText(keyText: "Know others, know yourself to win", style: TextStyle(color: Colors.white.withOpacity(0.65), fontWeight: FontWeight.bold, ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
