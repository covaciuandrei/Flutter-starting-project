import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stockify/core/app_router.gr.dart';
import 'package:stockify/core/injection.dart';
import 'package:stockify/cubit/base_state.dart';
import 'package:stockify/cubit/introductive/introductive_cubit.dart';

@RoutePage()
class IntroductivePage extends StatefulWidget implements AutoRouteWrapper {
  const IntroductivePage({super.key});

  @override
  State<IntroductivePage> createState() => _IntroductivePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<IntroductiveCubit>(
      create: (context) => getIt<IntroductiveCubit>(),
      child: this,
    );
  }
}

class _IntroductivePageState extends State<IntroductivePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<IntroductiveCubit>(context).load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IntroductiveCubit, BaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(AppLocalizations.of(context).appTitle)),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Ttile'),
                TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  ),
                  child: const Text('Go to login'),
                  onPressed: () {
                    AutoRouter.of(context).push(const LoginRoute());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
