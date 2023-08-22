import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/forgot_password/provider/forgot_pass_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

GlobalKey<FormState> changePasswordKey = GlobalKey<FormState>();

@RoutePage()
class ChangePasswordScreen extends GetView<ForgetPassController> {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        children: [
          15.height,
          Form(
            key: changePasswordKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Change Password',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700, fontSize: 20)),
                    //Assets.images.icons.wave.image(),
                  ],
                ),
                30.height,
                InputWithTextHead(
                  title: "New Password",
                  controller: controller.passwordController,
                  textFieldType: TextFieldType.PASSWORD,
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFF7F909F),
                  ),
                ),
                20.height,
                InputWithTextHead(
                  title: "Confirm Password",
                  controller: controller.confirmPasswordController,
                  textFieldType: TextFieldType.PASSWORD,
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFF7F909F),
                  ),
                ),
                50.height,
              ],
            ),
          ),
          AppElevatedButton(
            height: 56,
            text: 'Next',
            color: const Color(0xFF546EF7),
            onPressed: () {
              if (controller.confirmPasswordController.text !=
                  controller.passwordController.text) {
                snackBar(context,
                    title: "Unable to Login, please try again",
                    backgroundColor: AppPalette.red.red400);
                return;
              }

              controller.validatePassword(context);
              // print('i must be logged in');
            },
          ),
          24.height,
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                controller.gotoLoginPage();
              },
              child: Text("Back to Login",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.30,
                    color: const Color(0xFF546EF7),
                  )),
            ),
          ),
          20.height,
        ],
      ),
    ));
  }

  Widget _button(svg, title) {
    return Container(
      width: 327,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.75,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFF3F3F3),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svg,
          14.width,
          Text(title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 1.30,
                color: const Color(0xFF0D120E),
              )),
        ],
      ),
    );
  }
}
