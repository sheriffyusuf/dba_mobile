import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProfileController extends GetxController {
  var isInitialised = false.obs;
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final ageController = TextEditingController();
  final bloodGroupController = TextEditingController();
  final weightController = TextEditingController();

  @override
  void onInit() {
    isInitialised.value = true;

    super.onInit();
  }

  void gotoProfileScreen() {
    appRoute.push(const MyProfileRoute());
  }
}
