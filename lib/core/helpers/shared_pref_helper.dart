import 'package:get/get.dart';
import 'package:new_project/core/services/shared_pref.dart';


class SharedPrefHelper {
  Services services = Get.put(Services());

  setData(String key, value) async {
    switch (value.runtimeType) {
      case const (String):
        await services.sharedPreferences.setString(key, value);
        break;
      case const (int):
        await services.sharedPreferences.setInt(key, value);
        break;
      default:
        return null;
    }
  }

  getInt(String key) async {
    return services.sharedPreferences.getInt(key) ?? 0;
  }

  getString(String key) async {
    return services.sharedPreferences.getString(key) ?? '';
  }

  removeData(String key) async {
    await services.sharedPreferences.remove(key);
  }

  clearAllData() async {
    await services.sharedPreferences.clear();
  }
}
