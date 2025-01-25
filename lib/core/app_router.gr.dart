// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:stockify/presentation/pages/introductive/introductive_page.dart'
    as _i1;
import 'package:stockify/presentation/pages/login/login_page.dart' as _i2;

/// generated route for
/// [_i1.IntroductivePage]
class IntroductiveRoute extends _i3.PageRouteInfo<void> {
  const IntroductiveRoute({List<_i3.PageRouteInfo>? children})
      : super(
          IntroductiveRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroductiveRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return _i3.WrappedRoute(child: const _i1.IntroductivePage());
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return _i3.WrappedRoute(child: const _i2.LoginPage());
    },
  );
}
