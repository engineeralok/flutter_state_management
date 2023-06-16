import 'dart:convert';

import 'package:mvvm_with_provider/data/network/base_api_services.dart';
import 'package:mvvm_with_provider/data/network/network_api_service.dart';
import 'package:mvvm_with_provider/model/user_model.dart';
import 'package:mvvm_with_provider/res/app_url.dart';
import 'package:mvvm_with_provider/view_model/user_view_model.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginUrl, data);

      // print(response[0]);

      // final UserModel user = response[0];

      // final finalResponse = jsonDecode(response);

      // final user = UserModel.fromJson(finalResponse);
      // print(user.toString());

      // print(finalResponse.toString());

      // UserViewModel().saveUser(user);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.registerUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
