// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../cubit/introductive/introductive_cubit.dart' as _i75;
import '../cubit/login/login_cubit.dart' as _i983;
import 'app_router.dart' as _i313;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i75.IntroductiveCubit>(() => _i75.IntroductiveCubit());
  gh.factory<_i983.LoginCubit>(() => _i983.LoginCubit());
  gh.lazySingleton<_i313.AppRouter>(() => _i313.AppRouter());
  return getIt;
}
