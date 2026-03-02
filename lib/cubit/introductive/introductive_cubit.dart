import 'package:injectable/injectable.dart';
import 'package:flutter_starting_template/cubit/base_cubit.dart';
import 'package:flutter_starting_template/cubit/base_state.dart';
import 'package:flutter_starting_template/cubit/login/login_states.dart';

@injectable
class IntroductiveCubit extends BaseCubit {
  IntroductiveCubit() : super(InitialState());

  Future<void> load() async {
    safeEmit(PendingState());
    Future.delayed(
        const Duration(seconds: 5), () => safeEmit(LoadingFinishedState()));
  }
}
