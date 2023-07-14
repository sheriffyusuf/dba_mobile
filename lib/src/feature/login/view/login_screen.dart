import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/login/provider/login_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

@RoutePage()
class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.close,
              color: AppPalette.white,
              size: 27,
            ),
          ),
          15.height,
          Row(
            children: [
              Text('Login',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 30)),
              //Assets.images.icons.wave.image(),
            ],
          ),
          6.height,
          40.height,
          Form(
            key: controller.loginFormKey,
            child: Column(
              children: [
                InputWithTextHead(
                  title: "Email address",
                  controller: controller.emailController,
                  textFieldType: TextFieldType.EMAIL,
                ),
                20.height,
                InputWithTextHead(
                  title: "Password",
                  controller: controller.passwordController,
                  textFieldType: TextFieldType.PASSWORD,
                ),
                30.height,
              ],
            ),
          ),
          AppElevatedButton(
            height: 56,
            text: 'Log in',
            onPressed: () {
              // print('i must be logged in');
              controller.loginUser(context);
            },
          ),
          24.height,
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                      text: 'Don\'t have account?',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppPalette.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.14,
                      ),
                    ),
                    TextSpan(
                      text: ' Register',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => controller.gotoRegister(),
                      style: TextStyle(
                        color: AppPalette.primary.primary400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.14,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
