import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/hospital_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

var hospitalList = <HospitalModel>[
  HospitalModel(
      location: 'Chika general Hospital, samaru Zaria',
      name: "Chika Hospital",
      rating: "4.5",
      review: "1000",
      imageUrl: Assets.images.hospitlal1.path),
  HospitalModel(
      location: 'Inside Abu, samaru Zaria',
      name: "SickBay Abu",
      rating: "3.9",
      review: "10000",
      imageUrl: Assets.images.hospital2.path),
  HospitalModel(
      location: 'Inside Abu, samaru Zaria',
      name: "SickBay Abu",
      rating: "3.0",
      review: "10000",
      imageUrl: Assets.images.hospital3.path),
  HospitalModel(
      location: 'Inside Abu, samaru Zaria',
      name: "SickBay Abu",
      rating: "2.9",
      review: "10000",
      imageUrl: Assets.images.hospital4.path),
  HospitalModel(
      location: 'Inside Abu, samaru Zaria',
      name: "SickBay Abu",
      rating: "4.9",
      review: "10000",
      imageUrl: Assets.images.hospital5.path),
  HospitalModel(
      location: 'Inside Abu, samaru Zaria',
      name: "SickBay Abu",
      rating: "5.9",
      review: "10000",
      imageUrl: Assets.images.hospital6.path),
];

class DoctorAppointController extends GetxController {
  var isInitialised = false.obs;
  final searchController = TextEditingController();
  @override
  void onInit() {
    isInitialised.value = true;

    super.onInit();
  }
}
