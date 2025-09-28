import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:new_project/core/helpers/shared_pref_helper.dart';

class TokenManager {
  static final TokenManager instance = TokenManager._internal();
  SharedPrefHelper sharedPrefHelper = Get.find();
  String? token;

  factory TokenManager() => instance;

  TokenManager._internal();

  Future<String?> getToken() async {
    if (token != null) {
      return token;
    } else {
      token = await sharedPrefHelper.getString('token');
      return token;
    }
  }

  Future<void> setToken(String token) async {
    token = token;
    await sharedPrefHelper.setData('token',token);
  }

 
}
