import 'package:dba_mobile/src/feature/register/provider/register_controller.dart';
import 'package:get/get.dart';

class RegistrationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(() => RegistrationController());
  }
}
