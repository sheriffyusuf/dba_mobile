import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/loader.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:dba_mobile/src/feature/forgot_password/provider/forgot_password_binding.dart';
import 'package:dba_mobile/src/feature/home/provider/hom_binding.dart';
import 'package:dba_mobile/src/feature/register/provider/register_binding.dart';
import 'package:dba_mobile/src/network/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginController extends GetxController {
  var isInitialised = false.obs;
  var isPlaying = false.obs;
  var isFinished = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final apiRepository = ApiRepository();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

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

  gotoHomeScreen(BuildContext c) {
    FocusScope.of(c).requestFocus(FocusNode());
    HomeBindings().dependencies();
    appRoute.replaceAll([const DashboardRoute()]);
  }

  gotoForgotPassword(BuildContext c) {
    // FocusScope.of(c).requestFocus(FocusNode());
    ForgotPasswordBindings().dependencies();
    appRoute.push(const ForgotPasswordRoute());
  }

  gotoRegister() {
    RegistrationBindings().dependencies();
    appRoute.push(const RegistrationRoute());
  }

  loginUser(BuildContext c) async {
    final isValidForm = loginFormKey.currentState?.validate() ?? false;
    if (!isValidForm) return;

    try {
      //  loginFormKey.currentState!.save();
      showLoader(c);
      var userDetails = await apiRepository.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
      hideLoader();
      if (userDetails.user != null) {
        gotoHomeScreen(c);
      } else {
        snackBar(c,
            title: "Unable to Login, please try again",
            backgroundColor: AppPalette.red.red400);
      }
    } catch (e) {
      hideLoader();
      snackBar(c,
          title: "Unable to Login, please try again",
          backgroundColor: AppPalette.red.red400);
    }
  }
}
