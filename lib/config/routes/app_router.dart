import 'package:auto_route/auto_route.dart';
import 'package:inmac_app/presentation/screens/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        ///Example
        // AutoRoute(path: '/pre-sign-in', page: PreSignInRoute.page),
        // AutoRoute(path: '/sign-in', page: SignInRoute.page),
        // AutoRoute(path: '/sign-up', page: SignUpRoute.page),
        // AutoRoute(path: '/home', page: HomeRoute.page),
      ];
// final List<AutoRoute> routes = [
//   AutoRoute(page: SignInScreen),
// ];
}

final appRouter = AppRouter();
