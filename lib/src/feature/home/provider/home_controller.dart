import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/home/doctor_model.dart';
import 'package:dba_mobile/src/Models/home/product_model.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_binding.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final doctorsList = <DoctorModel>[
  DoctorModel(
      name: "Dr. Cody Fisher",
      rating: '4.5',
      rewiews: "100",
      hospital: "Dhaka Medical, bangladesh",
      yearsOfExpe: "5",
      type: "General physician",
      imageUrl: Assets.images.doctorMale.path),
  DoctorModel(
      name: "Dr. Amina Musa",
      rating: '5.0',
      rewiews: "200",
      hospital: "Dhaka Medical, bangladesh",
      yearsOfExpe: "7",
      type: "General physician",
      imageUrl: Assets.images.doctorFemale.path),
  DoctorModel(
      name: "Dr. John Foo",
      rating: '4.3',
      rewiews: "100",
      hospital: "Dhaka Medical, bangladesh",
      yearsOfExpe: "4",
      type: "General physician",
      imageUrl: Assets.images.doctorMale.path),
];

class HomeController extends GetxController {
  var isFinished = false.obs;
  var videoLink = ''.obs;
  final searchController = TextEditingController();

  final productModelList = <ProductModel>[
    ProductModel(
      name: 'Paracetamol',
      price: "6.99",
      imageUrl: Assets.images.parastamol.path,
    ),
    ProductModel(
      name: 'Covidd vaccine',
      price: "10.99",
      imageUrl: Assets.images.covid.path,
    ),
  ];

  @override
  void onInit() {
    //getHomeThings();

    super.onInit();
  }

  gotoDoctorBinding() {
    DoctorAppointBindings().dependencies();
    appRoute.push(const DoctorAppointRoute());
  }

  void gotoDoctorDetail(DoctorModel doctor) {
    DoctorAppointBindings().dependencies();
    Get.find<DoctorAppointController>().selectedModel = doctor;
    appRoute.push(const DoctorDetailsRoute());
  }

  void gotoBookNowPage(DoctorModel doctorsList) {
    DoctorAppointBindings().dependencies();
    appRoute.push(const PopularDoctorRoute());
  }

  void gotoPopularPage() {
    DoctorAppointBindings().dependencies();
    appRoute.push(const PopularDoctorRoute());
  }
}
