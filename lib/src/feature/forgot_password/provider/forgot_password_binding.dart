import 'package:dba_mobile/src/feature/forgot_password/provider/forgot_pass_controller.dart';
import 'package:dba_mobile/src/feature/login/provider/login_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBindings extends Bindings {
  @override
  void dependencies() {
  
    Get.lazyPut<ForgetPassController>(() => ForgetPassController());
  }
}
