import 'package:dba_mobile/src/feature/login/provider/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
  
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
