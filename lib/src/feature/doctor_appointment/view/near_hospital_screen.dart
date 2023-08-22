import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/hospital_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class NearHospitalScreen extends GetView<DoctorAppointController> {
  const NearHospitalScreen({super.key});

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
                        title: 'Nearby Hospital',
                      )
                      //20.height,
                    ],
                  ),
                )),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: [
                GridView.count(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this would produce 2 rows.
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    // Generate 100 Widgets that display their index in the List
                    children: [
                      ...hospitalList.map((e) {
                        return InkWell(
                            onTap: () {
                              controller.gotoADoctorScreen(e);
                            },
                            child: HospitalItem(
                              model: e,
                            ));
                      })
                    ]),
                40.height,
              ],
            )));
  }

  Widget _hospitalList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...hospitalList
              .map((e) => Row(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: HospitalItem(
                            model: e,
                          )),
                      10.width
                    ],
                  ))
              .toList()
        ],
      ),
    );
  }
}
