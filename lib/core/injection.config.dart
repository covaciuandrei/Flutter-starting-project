// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../cubit/introductive/introductive_cubit.dart' as _i4;
import '../cubit/login/login_cubit.dart' as _i5;
import 'app_router.dart' as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.$AppRouter>(_i3.$AppRouter());
  gh.factory<_i4.IntroductiveCubit>(() => _i4.IntroductiveCubit());
  gh.factory<_i5.LoginCubit>(() => _i5.LoginCubit());
  return getIt;
}
