import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SizedBox(),
      // child: BlocProvider(
      //   create: (context) => SplashCubit()..init(),
      //   child: BlocListener<SplashCubit, SplashState>(
      //     listener: (context, state) {
      //       if (state is SplashDone) {
      //         FlutterNativeSplash.remove();
      //       }
      //       // debugPrint("STATE SPLASH : $state");
      //     },
      //     child: const SFIcon(Imgs.splashScreen),
      //   ),
      // ),
    );
  }
}
