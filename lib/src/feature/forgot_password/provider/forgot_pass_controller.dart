import 'package:dba_mobile/src/network/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ForgetPassController extends GetxController {
  var isInitialised = false.obs;
  var isPlaying = false.obs;
  var isFinished = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final apiRepository = ApiRepository();
  GlobalKey<FormState> forgotPasswordKey = GlobalKey<FormState>();

  @override
  void onInit() {
    isInitialised.value = true;

    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();

    super.onClose();
  }
}
