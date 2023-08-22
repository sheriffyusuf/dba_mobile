import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/category_model.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/hospital_model.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/review_model.dart';
import 'package:dba_mobile/src/Models/home/doctor_model.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
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
  String selectedCategories = '';
  DoctorModel selectedModel = const DoctorModel();

  var categoryList = [
    CategoryModel(
      name: "Heart",
      imageUrl: Assets.images.heart.path,
    ),
    CategoryModel(
      name: "Kidney",
      imageUrl: Assets.images.kidney.path,
    ),
    CategoryModel(
      name: "Dental",
      imageUrl: Assets.images.dental.path,
    ),
    CategoryModel(
      name: "Lungs",
      imageUrl: Assets.images.lungs.path,
    ),
  ];
  var listDiseases = ["All", "Cardiology", "Diebetes", "Cancer"];

  var commentList = <ReviewModel>[
    const ReviewModel(
        name: "Jerome Bell",
        comment:
            "Tortor ultrices vel vulputate sollicitudin vitae. Nunc enim sapien integer facilisis.",
        rating: "3.0",
        time: "45 Min Ago"),
    const ReviewModel(
        name: "Theresa Webb",
        comment: "I will always patronize you",
        rating: "3.5",
        time: "31 Min Ago"),
    const ReviewModel(
        name: "Amina Daudu",
        comment:
            "Tortor ultrices vel vulputate sollicitudin vitae. Nunc enim sapien integer facilisis.",
        rating: "1.5",
        time: "31 Min Ago"),
    const ReviewModel(
        name: "Aminu Jerome",
        comment:
            "Tortor ultrices vel vulputate sollicitudin vitae. Nunc enim sapien integer facilisis.",
        rating: "2.5",
        time: "20 Min Ago"),
    const ReviewModel(
        name: "John Musa",
        comment: "Very good Doctor",
        rating: "4.0",
        time: "31 Min Ago"),
    const ReviewModel(
        name: "Jerome Bell",
        comment:
            "Tortor ultrices vel vulputate sollicitudin vitae. Nunc enim sapien integer facilisis.",
        rating: "3.5",
        time: "1 Min Ago"),
  ];
  final selectedDiseases = "All".obs;
  @override
  void onInit() {
    isInitialised.value = true;

    super.onInit();
  }

  void gotoCategoriesScreen(String category) {
    selectedCategories = category;
    appRoute.push(const CategoryDetailRoute());
  }

  void gotoAllCategoriesScreen() {
    appRoute.push(const CategoryListRoute());
  }

  void gotoADoctorScreen(HospitalModel e) {
    appRoute.push(const NearHospitalRoute());
  }

  void gotoDoctorDetail(DoctorModel doctor) {
    selectedModel = doctor;
    appRoute.push(const DoctorDetailsRoute());
  }

  void gotoBookNowPage(DoctorModel doctorsList) {
    appRoute.push(const PopularDoctorRoute());
  }

  void gotoAppointmentScreen() {
    appRoute.push(const BookAppointmentRoute());
  }
}
