import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/errors/failures.dart';
import 'package:route_task/features/products/data/data_sources/remote/product_remote_ds.dart';
import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';
import 'package:route_task/features/products/domain/repositories/product_repo.dart';

@Injectable(as: ProductRepo)
class ProductRepoImplementation implements ProductRepo {
  ProductRemoteDS productRemoteDS;
  ProductRepoImplementation(this.productRemoteDS);

  @override
  Future<Either<Failures, GetAllProductsModel>> getAllProducts() async {
    try {
      var result = await productRemoteDS.getAllProducts();
      return Right(result);
    } catch (e) {
      return Left(
        RemoteFailures(
          e.toString(),
        ),
      );
    }
  }
}
