import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inmac_app/presentation/bloc/user/user_bloc.dart';
import 'package:oktoast/oktoast.dart';

import 'config/routes/app_router.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return OKToast(
              child: MaterialApp.router(
                title: 'Inmac',
                debugShowCheckedModeBanner: false,
                routerDelegate: appRouter.delegate(),
                scaffoldMessengerKey: scaffoldMessengerKey,
                routeInformationParser: appRouter.defaultRouteParser(),
                theme: ThemeData(
                  fontFamily: 'Geologica',
                  primarySwatch: Colors.blue,
                ),
              ),
            );
          }),
    );
  }
}

