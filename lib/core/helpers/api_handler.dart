import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:new_project/core/classs/request_state.dart';

Future<void> dataHandler<T>({
  required Function() api,
  required Rx<RequestState> state,
  required Function(dynamic data) onSuccess,
  Function(dynamic data)? onFailure,
}) async {
  state.value = RequestState.loading;
  try {
    final response = await api();
    state.value = RequestState.success;
    onSuccess(response);
  } catch (e) {
    state.value = RequestState.defaultError;
    onFailure?.call(e);
  }
}
