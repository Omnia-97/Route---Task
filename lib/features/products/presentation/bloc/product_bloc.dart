import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/enums/enums.dart';
import 'package:route_task/core/errors/failures.dart';
import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';
import 'package:route_task/features/products/domain/use_cases/get_products_use_case.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';
@injectable

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetAllProductsUseCase getAllProductsUseCase;

  ProductBloc({required this.getAllProductsUseCase})
      : super(const ProductState()) {
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsStatus: ScreenStatus.loading));
      var result = await getAllProductsUseCase.call();
      result.fold((l) {
        emit(state.copyWith(
            getProductsStatus: ScreenStatus.failure, getProductsFailure: l));
      }, (r) {
        emit(state.copyWith(
            getProductsStatus: ScreenStatus.success, getAllProductsModel: r));
      });
    });
  }
}
