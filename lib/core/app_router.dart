import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:stockify/core/app_router.gr.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(path: '/introductive', page: IntroductiveRoute.page, initial: true),
    AutoRoute(path: '/login', page: LoginRoute.page),
  ];
}
