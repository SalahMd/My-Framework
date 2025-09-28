import 'package:get/get.dart';
import 'package:new_project/core/classs/dio_class.dart';
import 'package:new_project/core/helpers/shared_pref_helper.dart';


class DependencyInjection {
  static Future<void> init() async {
    final SharedPrefHelper sharedPrefHelper = Get.put(SharedPrefHelper());

    String? token = await sharedPrefHelper.getString('token');
    if (token != null) {
      Get.put(DioClass(token: token), permanent: true);
    }
  }
}
