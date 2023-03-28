import 'package:dio/dio.dart';
import 'package:hypermart/model/product_model.dart';

class ProductService {
  Future<List<ProductModel>> getProduct() async {
    try {
      var dio = Dio();
      var response =
          await dio.get('https://clear-ant-handbag.cyclic.app/getProduct');
      return (response.data as List<dynamic>)
          .map((e) => ProductModel.fromJson(e))
          .toList();
    } catch (e) {
      print('Error $e');
    }
    return [];
  }
}
