import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/login/provider/login_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
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
          Text("Enter your credentials to acess your account",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 1.30,
                color: const Color(0xFF7F909F),
              )),
          40.height,
          Form(
            key: controller.loginFormKey,
            child: Column(
              children: [
                InputWithTextHead(
                  title: "Email",
                  hint: "Enter email",
                  controller: controller.emailController,
                  textFieldType: TextFieldType.EMAIL,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color(0xFF7F909F),
                  ),
                ),
                20.height,
                InputWithTextHead(
                  title: "Password",
                  hint: "Enter password",
                  controller: controller.passwordController,
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFF7F909F),
                  ),
                  textFieldType: TextFieldType.PASSWORD,
                ),
                30.height,
                /*  Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      controller.gotoForgotPassword(context);
                    },
                    child: Text("Forgot password?",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.30,
                          color: const Color(0xFF546EF7),
                        )),
                  ),
                ),
                20.height, */
              ],
            ),
          ),
          AppElevatedButton(
            height: 56,
            text: 'Log in',
            color: const Color(0xFF546EF7),
            onPressed: () {
              // print('i must be logged in');
              controller.loginUser(context);
            },
          ),
          24.height,
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                controller.gotoRegister();
              },
              child: Text("Create an Account",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.30,
                    color: const Color(0xFF546EF7),
                  )),
            ),
          ),
          10.height,
          /*   Align(
            alignment: Alignment.center,
            child: Text("Or Using",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.30,
                  color: const Color(0xFF7F909F),
                )),
          ),
          14.height, */
          // _button(Assets.images.facebook.svg(), "Login with Facebook"),
          // 14.height,
          // _button(Assets.images.google.svg(), "Login with Google"),
          /*  InkWell(
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
       */
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
