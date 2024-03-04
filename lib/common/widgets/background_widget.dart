import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    this.child,
    this.appBar,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset = true,
    this.extendBody = false,
    this.scaffoldKey,
    this.color = const Color(0xFF1c1c20)
  }) : super(key: key);

  final Widget? child;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final bool resizeToAvoidBottomInset;
  final bool extendBody;
  final Key? scaffoldKey;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // const SizedBox.expand(child: SFIcon(Imgs.background, fit: BoxFit.fill)),
        // Container(color: AppColors.black),
        // Container(
        //   decoration: BoxDecoration(
        //     gradient: RadialGradient(
        //       center: const Alignment(-0.5, -0.7),
        //       colors: [
        //         AppColors.radial1,
        //         AppColors.radial1.withOpacity(0.8),
        //         AppColors.radial1.withOpacity(0.5),
        //         AppColors.radial1.withOpacity(0.2),
        //         AppColors.radial1.withOpacity(0.1),
        //         AppColors.black.withOpacity(0),
        //       ],
        //       radius: 1.3,
        //     ),
        //   ),
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //     gradient: RadialGradient(
        //       center: const Alignment(0.65, 0.65),
        //       colors: [
        //         AppColors.radial2,
        //         AppColors.radial2.withOpacity(0.8),
        //         AppColors.radial2.withOpacity(0.5),
        //         AppColors.radial2.withOpacity(0.3),
        //         AppColors.radial2.withOpacity(0.1),
        //         AppColors.radial2.withOpacity(0.05),
        //         AppColors.black.withOpacity(0),
        //       ],
        //       radius: 1.35,
        //     ),
        //   ),
        // ),
        Scaffold(
          key: scaffoldKey,
          backgroundColor: color,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          bottomNavigationBar: bottomNavigationBar,
          appBar: appBar,
          extendBody: extendBody,
          body: child,
        ),
      ],
    );
  }
}
