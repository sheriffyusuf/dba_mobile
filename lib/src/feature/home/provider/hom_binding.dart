import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
  Get.put<HomeController>(HomeController());
  }
}
