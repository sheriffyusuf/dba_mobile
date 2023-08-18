import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DiscoverController extends GetxController {
  var isInitialised = false.obs;

  @override
  void onInit() {
    isInitialised.value = true;

    super.onInit();
  }
}
