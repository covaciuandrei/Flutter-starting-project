import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:flutter_starting_template/assets/localization/app_localizations.dart';
import 'package:flutter_starting_template/core/app_router.dart';
import 'package:flutter_starting_template/core/injection.dart';

void main() async {
  configureDependencies();
  await getIt.allReady();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      title: 'Flutter Starting Template',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        Locale result;
        if (locale == null) {
          result = supportedLocales.first;
        } else {
          final Locale? supportedLocale = supportedLocales.firstWhereOrNull(
              (element) => element.languageCode == locale.languageCode);
          result = supportedLocale ?? supportedLocales.first;
        }

        Intl.defaultLocale = result.languageCode;

        return result;
      },
    );
  }
}
