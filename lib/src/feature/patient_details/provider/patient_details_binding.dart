import 'package:dba_mobile/src/feature/patient_details/provider/patient_detail_controller.dart';
import 'package:dba_mobile/src/feature/pharmacy/provider/pharmacy_controller.dart';
import 'package:get/get.dart';

class PatientDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientDetailsController>(() => PatientDetailsController());
  }
}