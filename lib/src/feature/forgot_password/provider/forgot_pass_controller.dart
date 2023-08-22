import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:dba_mobile/src/feature/forgot_password/view/change_password_screen.dart';
import 'package:dba_mobile/src/feature/login/provider/login_binding.dart';
import 'package:dba_mobile/src/network/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nb_utils/nb_utils.dart';

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

  gotoChangePassword() {
    appRoute.replace(const ChangePasswordRoute());
  }

  forgotPassword(BuildContext context) {
    final isValidForm = forgotPasswordKey.currentState?.validate() ?? false;
    if (!isValidForm) return;
    showBottomModal(context);
  }

  showBottomModal(BuildContext context) {
    showModalBottomSheet<void>(
        // context and builder are
        // required properties in this widget
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          // we set up a container inside which
          // we create center column and display text

          // Returning SizedBox instead of a Container
          return SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  20.height,
                  Assets.images.emailSent.svg(),
                  20.height,
                  const Text(
                    'Email link sent!',
                    style: TextStyle(
                      color: Color(0xFF0D120E),
                      fontSize: 22,
                      fontFamily: 'Eudoxus Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.30,
                    ),
                  ),
                  const Text(
                    'We’ve sent an email to alexandriafor99@gmail.com with a link to get back into your account.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7F909F),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  ),
                  40.height,
                  AppElevatedButton(
                    height: 48,
                    text: 'Okay',
                    color: const Color(0xFF546EF7),
                    onPressed: () {
                      gotoChangePassword();
                      // print('i must be logged in');
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  showBottomModalChangePass(BuildContext context) {
    showModalBottomSheet<void>(
        // context and builder are
        // required properties in this widget
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          // we set up a container inside which
          // we create center column and display text

          // Returning SizedBox instead of a Container
          return SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  20.height,
                  Assets.images.emailSent.svg(),
                  20.height,
                  const Text(
                    'Password Changed!',
                    style: TextStyle(
                      color: Color(0xFF0D120E),
                      fontSize: 22,
                      fontFamily: 'Eudoxus Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.30,
                    ),
                  ),
                  const Text(
                    'Return to the login page to enter your account with your new password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7F909F),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  ),
                  40.height,
                  AppElevatedButton(
                    height: 48,
                    text: 'Back to Login',
                    color: const Color(0xFF546EF7),
                    onPressed: () {
                      gotoChangePassword();
                      // print('i must be logged in');
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void gotoLoginPage() {
    LoginBindings().dependencies();
    appRoute.replaceAll([const LoginRoute()]);
  }

  void validatePassword(BuildContext context) {
    final isValidForm = changePasswordKey.currentState?.validate() ?? false;
    if (!isValidForm) return;
    showBottomModalChangePass(context);
  }
}
