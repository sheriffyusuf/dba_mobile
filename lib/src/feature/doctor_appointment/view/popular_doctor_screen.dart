import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/category_doctor_item.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/search_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class PopularDoctorScreen extends GetView<DoctorAppointController> {
  const PopularDoctorScreen({super.key});

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
                        title: "Popular Doctor",
                      )
                      //20.height,
                    ],
                  ),
                )),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                //
                children: [
                  MySearchWidget(
                    controller: controller.searchController,
                    callBack: (value) {},
                  ),
                  10.height,
                  _listDiseases(),
                  20.height,
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: doctorsList.length,
                    itemBuilder: (context, index) {
                      return DoctorCategoriesItem(
                          model: doctorsList[index],
                          bookNow: () {
                            controller.gotoBookNowPage(doctorsList[index]);
                          },
                          doctorDetails: () {
                            controller.gotoDoctorDetail(doctorsList[index]);
                          });
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                  ),
                ],
              ),
            )));
  }

  Widget _listDiseases() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...controller.listDiseases
              .map((e) => Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            controller.selectedDiseases.value = e;
                          },
                          child: _selectItem(e)),
                      5.width
                    ],
                  ))
              .toList()
        ],
      ),
    );
  }

  Widget _selectItem(String e) {
    return Obx(
      () => Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
        decoration: ShapeDecoration(
          color: controller.selectedDiseases.value == e
              ? const Color(0xFF4C5DF4)
              : Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFFE3E4E6)),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              e,
              style: TextStyle(
                color: controller.selectedDiseases.value != e
                    ? const Color(0xFF6E7682)
                    : Colors.white,
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 1.62,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
