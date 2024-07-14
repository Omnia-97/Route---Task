// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/api_manager.dart' as _i3;
import 'features/products/data/data_sources/remote/product_remote_ds.dart'
    as _i4;
import 'features/products/data/data_sources/remote/product_remote_ds_implement.dart'
    as _i5;
import 'features/products/data/repositories/product_repo_implement.dart' as _i7;
import 'features/products/domain/repositories/product_repo.dart' as _i6;
import 'features/products/domain/use_cases/get_products_use_case.dart' as _i8;
import 'features/products/presentation/bloc/product_bloc.dart' as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
  gh.factory<_i4.ProductRemoteDS>(
      () => _i5.ProductRemoteDSImplementation(gh<_i3.ApiManager>()));
  gh.factory<_i6.ProductRepo>(
      () => _i7.ProductRepoImplementation(gh<_i4.ProductRemoteDS>()));
  gh.factory<_i8.GetAllProductsUseCase>(
      () => _i8.GetAllProductsUseCase(gh<_i6.ProductRepo>()));
  gh.factory<_i9.ProductBloc>(() =>
      _i9.ProductBloc(getAllProductsUseCase: gh<_i8.GetAllProductsUseCase>()));
  return getIt;
}
