import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/category_doctor_item.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class DoctorsRoomScreen extends GetView<HomeController> {
  const DoctorsRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getAllDoctor();
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                AppAppBar(
                  title: "Doctors List",
                )
                //20.height,
              ],
            ),
          )),
      body: Obx(
        () {
          if (controller.docList.isEmpty) return Container();
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            shrinkWrap: true,
            itemCount: controller.docList.length,
            itemBuilder: (context, index) {
              return DoctorCategoriesItem(
                  model: controller.docList[index],
                  isFromQueue: controller.isToQueue.value,
                  bookNow: () {
                    if (controller.docList[index].availability == 'yes') {
                      if (controller.isToQueue.value != false) {
                        controller.gotoBookNowPage(controller.docList[index]);
                      } else {
                        controller.selectedModel.value =
                            controller.docList[index];
                        controller.bookApointmentDoctor();
                      }
                    } else {
                      snackBar(context,
                          title:
                              "Doctor not available at the moment, please check again later",
                          backgroundColor: AppPalette.red.red400);
                    }
                  },
                  doctorDetails: () {
                    controller.selectedModel.value = controller.docList[index];
                    controller.gotoDoctorQueue();
                    // controller.gotoDoctorDetail(controller.docList[index]);
                  });
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
