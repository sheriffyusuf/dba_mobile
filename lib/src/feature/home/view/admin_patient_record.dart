import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/admin_doctor_item.dart';
import 'package:dba_mobile/src/feature/home/widget/admin_patient_list.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:dba_mobile/src/feature/register/provider/register_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

@RoutePage()
class AdminPatientScreen extends GetView<HomeController> {
  const AdminPatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getAllPatientRecord();
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                AppAppBar(
                  title: "Patient records",
                )
                //20.height,
              ],
            ),
          )),
      body: Obx(
        () {
          if (controller.patientList.isEmpty) return Container();
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            shrinkWrap: true,
            itemCount: controller.patientList.length,
            itemBuilder: (context, index) {
              return AdminpatientRecordItem(
                  model: controller.patientList[index],
                  isFromQueue: controller.isToQueue.value,
                  bookNow: () {},
                  doctorDetails: () {});
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          );
        },
      ),
    ));
  }
}
