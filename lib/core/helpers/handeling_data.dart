
import 'package:new_project/core/classs/request_state.dart';

handelResponse(response) {
  if (response is RequestState) {
    return response;
  } else {
    return RequestState.success;
  }
}
