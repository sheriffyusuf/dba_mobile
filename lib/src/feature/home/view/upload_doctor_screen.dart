import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:dba_mobile/src/feature/register/provider/register_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

@RoutePage()
class PostDoctorScreen extends GetView<HomeController> {
  const PostDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        children: [
          15.height,
          Row(
            children: [
              Text('Post Doctor',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 30)),
              //Assets.images.icons.wave.image(),
            ],
          ),
          40.height,
          Form(
            key: controller.registerFormKey,
            child: Column(
              children: [
                InputWithTextHead(
                  title: "Full name",
                  controller: controller.fullNameController,
                  textFieldType: TextFieldType.NAME,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xFF7F909F),
                  ),
                ),
                20.height,
                InputWithTextHead(
                  title: "Speciality",
                  controller: controller.specialityController,
                  textFieldType: TextFieldType.NAME,
                ),
                20.height,
                InputWithTextHead(
                  title: "Year of experience",
                  controller: controller.yearexpeController,
                  textFieldType: TextFieldType.NAME,
                ),
                20.height,
                InputWithTextHead(
                  title: "Hospital",
                  controller: controller.hospitalController,
                  textFieldType: TextFieldType.NAME,
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Color(0xFF7F909F),
                  ),
                ),
                20.height,
                Row(
                  children: [
                    genderWidget(),
                    10.width,
                    //ageWidget(context),
                  ],
                ),
                30.height,
              ],
            ),
          ),
          AppElevatedButton(
            height: 56,
            text: 'Add Doctor',
            color: const Color(0xFF546EF7),
            onPressed: () {
              controller.postDoctorMethod(context);
              // print('i must be logged in');
              // controller.registerUser(context);
            },
          ),
          24.height,
          // bottomText()
        ],
      ),
    ));
  }

  InkWell bottomText() {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              const TextSpan(
                text: 'have account?',
                style: TextStyle(
                  color: AppPalette.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.14,
                ),
              ),
              TextSpan(
                text: ' Login',
                recognizer: TapGestureRecognizer()..onTap = () {},
                style: const TextStyle(
                  color: Color(0xFF546EF7),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.14,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

/*   Expanded ageWidget(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () async {
            await controller.pickDate(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Age',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
              Container(
                height: 45,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: AppPalette.grey.gray300)),
                child: Obx(
                  () => Text(controller.age.value,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          )),
    );
  }
 */
  Expanded genderWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Gender',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
          DropdownButtonFormField<String>(
            decoration: inputDecoration(),
            value: controller.dropDownValue.value,
            onChanged: (String? newValue) {
              if (newValue == 'Male') {
                controller.dropDownValue.value = 'm';
              } else if (newValue == 'Female') {
                controller.dropDownValue.value = 'f';
              }
            },
            items: <String>['Male', 'Female']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
