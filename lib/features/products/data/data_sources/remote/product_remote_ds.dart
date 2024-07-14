import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';

abstract class ProductRemoteDS {
  Future<GetAllProductsModel> getAllProducts();

}