import 'package:dba_mobile/src/feature/discover/provider/discover_controller.dart';
import 'package:dba_mobile/src/feature/forgot_password/provider/forgot_pass_controller.dart';
import 'package:dba_mobile/src/feature/login/provider/login_controller.dart';
import 'package:get/get.dart';

class DiscoverBindings extends Bindings {
  @override
  void dependencies() {
  
    Get.lazyPut<DiscoverController>(() => DiscoverController());
  }
}
