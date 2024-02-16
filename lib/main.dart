import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockify/core/app_router.gr.dart';
import 'package:stockify/core/injection.dart';
import 'package:stockify/cubit/introductive/introductive_cubit.dart';
import 'package:stockify/cubit/login/login_cubit.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IntroductiveCubit>(
            create: (context) => getIt<IntroductiveCubit>()),
        BlocProvider<LoginCubit>(create: (context) => getIt<LoginCubit>()),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
