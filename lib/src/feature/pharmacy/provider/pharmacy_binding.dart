import 'package:dba_mobile/src/feature/pharmacy/provider/pharmacy_controller.dart';
import 'package:get/get.dart';

class PharmacyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PharmacyController>(() => PharmacyController());
  }
}
