import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:login/model/login_model.dart';
class APIService{
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async{
    String url = "https://reqres.in/api/login";

    final response = await http.post(Uri.https('reqres.in', 'api/login'), body: requestModel.toJason());
    if(response.statusCode == 200 || response.statusCode ==400){
      return LoginResponseModel.fromJason(json.decode(response.body));
    }
    else{
      throw Exception('Failed to load Data');
    }
  }
} 