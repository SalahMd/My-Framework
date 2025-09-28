import 'dart:io';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxService {
  late SharedPreferences sharedPreferences;
  late Box box;

  Future<Services> init({String boxName = 'myBox'}) async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox(boxName);
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

Future<void> initialServices() async {
  await Get.putAsync(() => Services().init());
}
