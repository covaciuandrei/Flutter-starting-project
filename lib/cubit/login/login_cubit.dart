import 'package:injectable/injectable.dart';
import 'package:flutter_starting_template/cubit/base_cubit.dart';
import 'package:flutter_starting_template/cubit/base_state.dart';
import 'package:flutter_starting_template/cubit/login/login_states.dart';

@injectable
class LoginCubit extends BaseCubit {
  LoginCubit() : super(InitialState());

  Future<void> load() async {
    safeEmit(PendingState());
    Future.delayed(const Duration(milliseconds: 50),
        () => safeEmit(LoadingFinishedState()));
  }
}
