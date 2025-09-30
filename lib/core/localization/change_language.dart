import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_project/core/services/shared_pref.dart';

class ChangeLanguage extends GetxController {
  Locale? language;
  Services sharedPref = Get.put(Services());
  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    sharedPref.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflang = sharedPref.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
    } else {
      language = Locale("ar");
    }
    super.onInit();
  }
}
