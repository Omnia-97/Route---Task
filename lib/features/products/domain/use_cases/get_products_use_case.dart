import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/errors/failures.dart';
import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';
import 'package:route_task/features/products/domain/repositories/product_repo.dart';

@injectable
class GetAllProductsUseCase {
  ProductRepo productRepo;

  GetAllProductsUseCase(this.productRepo);
  Future<Either<Failures, GetAllProductsModel>> call() =>
      productRepo.getAllProducts();
}
