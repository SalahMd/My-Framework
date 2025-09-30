import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_project/core/constants/pages.dart';
import 'package:new_project/core/localization/change_language.dart';
import 'package:new_project/core/localization/translation.dart';
import 'package:new_project/core/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    ChangeLanguage controller = Get.put(ChangeLanguage());
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        theme: AppTheme.light,
        locale: controller.language,
        translations: Translation(),
        debugShowCheckedModeBanner: false,
        getPages: pages,
      ),
    );
  }
}
