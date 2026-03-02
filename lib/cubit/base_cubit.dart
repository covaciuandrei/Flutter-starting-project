import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starting_template/cubit/base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit(super.initialState);

  void safeEmit(BaseState state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
