import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class JoinQueueScreen extends GetView<HomeController> {
  const JoinQueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const PreferredSize(
                preferredSize: Size(double.infinity, 70),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      AppAppBar(
                        title: "Join Queue",
                      )
                      //20.height,
                    ],
                  ),
                )),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                InputWithTextHead(
                  title: "Name of patient",
                  controller: controller.nameController,
                  textFieldType: TextFieldType.NAME,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xFF7F909F),
                  ),
                ),
                20.height,
                InputWithTextHead(
                  title: "phone number",
                  controller: controller.phoneController,
                  textFieldType: TextFieldType.NUMBER,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Color(0xFF7F909F),
                  ),
                ),
                50.height,
                AppElevatedButton(
                    height: 45,
                    width: context.width() - 200,
                    text: 'Join now',
                    color: const Color(0xFF546EF7),
                    onPressed: () {
                      if (controller.nameController.text.isEmptyOrNull ||
                          controller.phoneController.text.isEmptyOrNull) {
                        snackBar(context,
                            title: "Please make sure all the fields are filled",
                            backgroundColor: AppPalette.red.red400);
                        return;
                      }
                      controller.joinQueueReal(context);
                    }),
              ],
            )));
  }
}
