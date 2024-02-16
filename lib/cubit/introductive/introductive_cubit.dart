import 'package:injectable/injectable.dart';
import 'package:stockify/cubit/base_cubit.dart';
import 'package:stockify/cubit/base_state.dart';
import 'package:stockify/cubit/login/login_states.dart';

@injectable
class IntroductiveCubit extends BaseCubit {
  IntroductiveCubit() : super(InitialState());

  Future<void> load() async {
    safeEmit(PendingState());
    Future.delayed(
        const Duration(seconds: 5), () => safeEmit(LoadingFinishedState()));
  }
}
