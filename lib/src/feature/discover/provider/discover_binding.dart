import 'package:dba_mobile/src/feature/discover/provider/discover_controller.dart';
import 'package:get/get.dart';

class DiscoverBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverController>(() => DiscoverController());
  }
}
