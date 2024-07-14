import 'package:dartz/dartz.dart';
import 'package:route_task/core/errors/failures.dart';
import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';

abstract class ProductRepo {
  Future<Either<Failures, GetAllProductsModel>> getAllProducts();
}
