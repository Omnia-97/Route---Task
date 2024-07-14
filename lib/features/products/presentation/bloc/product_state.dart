part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(ScreenStatus.init) ScreenStatus getProductsStatus,
    Failures? getProductsFailure,
    GetAllProductsModel? getAllProductsModel,
  }) = _ProductState;
}
