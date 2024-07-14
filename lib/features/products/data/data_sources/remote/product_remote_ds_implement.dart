import 'package:injectable/injectable.dart';
import 'package:route_task/core/api/api_manager.dart';
import 'package:route_task/core/api/end_points.dart';
import 'package:route_task/features/products/data/data_sources/remote/product_remote_ds.dart';
import 'package:route_task/features/products/data/models/GetAllProductsModel.dart';

@Injectable(as: ProductRemoteDS)
class ProductRemoteDSImplementation implements ProductRemoteDS {
  ApiManager apiManager;
  ProductRemoteDSImplementation(this.apiManager);

  @override
  Future<GetAllProductsModel> getAllProducts() async {
    var response = await apiManager.getData(EndPoints.products);
    GetAllProductsModel getAllProductsModel =
        GetAllProductsModel.fromJson(response.data);
    return getAllProductsModel;
  }
}
