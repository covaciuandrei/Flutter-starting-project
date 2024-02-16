import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockify/cubit/base_state.dart';
import 'package:stockify/cubit/login/login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, BaseState>(
      listener: (context, state) {
        // if(state is ){
        //   AutoRouter.of(context).pop();
        // }
      },
      builder: (context, state) {
        return Center(
          child: TextButton(
            child: Text('Go back'),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
