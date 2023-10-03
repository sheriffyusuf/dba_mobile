import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/component/input_with_text.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class BookAppointDoctorScreen extends GetView<HomeController> {
  const BookAppointDoctorScreen({super.key});

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
                        title: "Book Appointment",
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
                20.height,
                InputWithTextHead(
                  title: "symtoms",
                  controller: controller.symptomsController,
                  textFieldType: TextFieldType.MULTILINE,
                  prefixIcon: const Icon(
                    Icons.horizontal_split,
                    color: Color(0xFF7F909F),
                  ),
                ),
                20.height,
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          controller.selectedTime.value =
                              await controller.selectTime(context);

                          controller.periodFromController.text =
                              controller.selectedTime.value;
                        },
                        child: AbsorbPointer(
                          child: MyInputTextWidget(
                              controller: controller.periodFromController,
                              title: "Time",
                              hint: "12:00pm",
                              callBack: (value) {}),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          final DateTime? dateTime = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2070, 8));
                          if (dateTime != null) {
                            controller.selectedDate.value =
                                DateFormat('dd MMM, yyyy').format(dateTime);

                            controller.dateFromController.text =
                                controller.selectedDate.value;
                          }
                        },
                        child: AbsorbPointer(
                          child: MyInputTextWidget(
                              controller: controller.dateFromController,
                              title: "To",
                              hint: "dd MMM, yyyy",
                              callBack: (value) {}),
                        ),
                      ),
                    ),
                  ],
                ),
                50.height,
                AppElevatedButton(
                    height: 45,
                    width: context.width() - 200,
                    text: 'Book Appointment',
                    color: const Color(0xFF546EF7),
                    onPressed: () {
                      if (controller.nameController.text.isEmptyOrNull ||
                          controller.phoneController.text.isEmptyOrNull ||
                          controller.symptomsController.text.isEmptyOrNull||
                          controller.selectedDate.value.isEmptyOrNull||
                          controller.selectedTime.value.isEmptyOrNull

                          ) {
                        snackBar(context,
                            title: "Please make sure all the fields are filled",
                            backgroundColor: AppPalette.red.red400);
                        return;
                      }
                      controller.bookAppointMethod(context);
                    }),
              ],
            )));
  }
}
