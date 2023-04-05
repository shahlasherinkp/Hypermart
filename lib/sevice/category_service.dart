import 'package:dio/dio.dart';
import 'package:hypermart/model/category_model.dart';

class CategoryService {
  Future<List< CategoryModel>> getCategory() async {
    try {
      var dio = Dio();
      var response =
          await dio.get('https://clear-ant-handbag.cyclic.app/getProducts');
      print('Response: ${response.data}');
      return (response.data as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
    } catch (e) {
      print('Error $e');
    }
    return [];
  }
}
