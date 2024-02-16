import 'package:auto_route/auto_route.dart';
import 'package:stockify/presentation/pages/introductive/introductive_page.dart';
import 'package:stockify/presentation/pages/login/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: IntroductivePage, initial: true),
    AutoRoute(page: LoginPage),
  ],
)
class $AppRouter {}
