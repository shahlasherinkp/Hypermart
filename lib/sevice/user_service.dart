import 'package:dio/dio.dart';

import '../model/usermodel.dart';

class UserService {
  Future<UserModel?> getUser() async {
    try {
      var dio = Dio();
      var response = await dio.get(
          'https://clear-ant-handbag.cyclic.app/getUser',
          data: {"_id": "6433ac964a4c9b7849ffa502"});

      var result = UserModel.fromJson(response.data);
      return result;
      //  print(result.address);
    } catch (e) {
      print('Error $e');
    }
    return null;
  }
}
