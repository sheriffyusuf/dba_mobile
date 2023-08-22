import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/hospital_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/doctor_item.dart';
import 'package:dba_mobile/src/feature/home/widget/search_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class DoctorAppointScreen extends GetView<DoctorAppointController> {
  const DoctorAppointScreen({super.key});

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
                        title: 'Doctor Appointment',
                      )
                      //20.height,
                    ],
                  ),
                )),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: [
                MySearchWidget(
                  controller: controller.searchController,
                  callBack: (value) {},
                ),
              ],
            )));
  }
}
