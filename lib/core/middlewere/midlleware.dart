import 'package:new_project/core/helpers/shared_pref_helper.dart';

class MiddleWare {
  SharedPrefHelper sharedPref = SharedPrefHelper();
  redirect() async {
    if (await sharedPref.getString("step") == "un_registered") {
      return "Register";
    } else if (await sharedPref.getString("step") == "code_verefication") {
      return "VerificationCode";
    } else if (await sharedPref.getString("step") == "registered") {
      return "HomePage";
    } else {
      return "Register";
    }
  }
}
