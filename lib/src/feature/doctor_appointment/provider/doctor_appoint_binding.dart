import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:get/get.dart';

class DoctorAppointBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorAppointController>(() => DoctorAppointController());
  }
}
