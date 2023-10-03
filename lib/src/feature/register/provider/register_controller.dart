import 'package:dba_mobile/src/Models/login/register_model.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/loader.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:dba_mobile/src/feature/home/provider/hom_binding.dart';
import 'package:dba_mobile/src/feature/login/provider/login_binding.dart';
import 'package:dba_mobile/src/network/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class RegistrationController extends GetxController {
  var isInitialised = false.obs;
  var isPlaying = false.obs;
  var isFinished = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final dateController = TextEditingController();
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final apiRepository = ApiRepository();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  final dropDownValue = 'Male'.obs;
  final selectedDate = ''.obs;

  final age = ''.obs;

  @override
  void onInit() {
    isInitialised.value = true;
    setDate();

    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  gotoHomeScreen(BuildContext c) {
    FocusScope.of(c).requestFocus(FocusNode());
    HomeBindings().dependencies();
    appRoute.replaceAll([const HomeRoute()]);
  }

  gotoLogin() {
    LoginBindings().dependencies();
    appRoute.replace(const LoginRoute());
  }

  Future<void> pickDate(BuildContext context) async {
    final DateTime? date = await showDatePicker(
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              primarySwatch: Colors.grey,
              splashColor: Colors.black,
              textTheme: const TextTheme(
                titleMedium: TextStyle(color: Colors.black),
                labelLarge: TextStyle(color: Colors.black),
              ),
              colorScheme: ColorScheme.light(
                  primary: AppPalette.primary.primary400,
                  onSecondary: Colors.black,
                  onPrimary: Colors.white,
                  surface: Colors.black,
                  onSurface: Colors.black,
                  secondary: Colors.black),
              dialogBackgroundColor: Colors.white,
            ),
            child: child ?? const Text(""),
          );
        },
        context: context,
        initialDate: age.value.isEmptyOrNull
            ? DateTime.now()
            : DateTime(
                age.value.split('/')[2].toInt(),
                age.value.split('/')[1].toInt(),
                age.value.split('/')[0].toInt()),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (date != null) {
      age.value = '${date.day}/${date.month} /${date.year}';
    }
  }

  void setDate() {
    final date = DateTime.now();
    //selectedDate.value =
    age.value = '${date.day}/${date.month}/${date.year}';
  }

  registerUser(BuildContext c) async {
    final isValidForm = registerFormKey.currentState?.validate() ?? false;
    if (!isValidForm) return;
    final dateNow = DateTime.now();
    if (age.value.isEmptyOrNull ||
        age.value == "'${dateNow.day}/${dateNow.month}/${dateNow.year}'") {
      snackBar(c,
          title: "Please Select your age",
          backgroundColor: AppPalette.red.red400);
      return;
    }
    if (passwordController.text != confirmPasswordController.text) {
      snackBar(c,
          title: "Please make sure that the confirm password is correct",
          backgroundColor: AppPalette.red.red400);
      return;
    }

    try {
      registerFormKey.currentState!.save();
      showLoader(c);
      var userDetails = await apiRepository.registerWithEmailAndPassword(
          emailController.text, passwordController.text);

      if (userDetails.user != null) {
        apiRepository
            .getUserRef(userDetails.user!.uid)
            .set(RegisterModel(
                    id: '',
                    name: fullNameController.text,
                    gender: dropDownValue.value,
                    address: addressController.text,
                    age: age.value,
                    dateofbirth: 'kkk',
                    lastlogin: 'okkk',
                    createdat:'jjjjjj',
                    email: emailController.text)
                .toJson())
            .then((value) {
          hideLoader();
          gotoLogin();
        }).catchError((e) {
          hideLoader();
          snackBar(c,
              title: e.toString(), backgroundColor: AppPalette.red.red400);
        });
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
