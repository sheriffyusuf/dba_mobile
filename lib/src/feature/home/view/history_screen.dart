import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/history_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class HistoryScreen extends GetView<HomeController> {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getAllAppointment();
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("History",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 20)),
                ),
                //20.height,
              ],
            ),
          )),
      body: Obx(
        () {
          if (controller.appointmentList.isEmpty) return Container();
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            shrinkWrap: true,
            itemCount: controller.appointmentList.length,
            itemBuilder: (context, index) {
              return HistoryItem(
                  model: controller.appointmentList[index],
                  isFromQueue: !controller.isToQueue.value,
                  bookNow: () {
                    if (controller.appointmentList[index].status == 'active') {
                      controller.cancelAppointment(
                          context, controller.appointmentList[index]);
                    } else {
                      controller.makeAppointmentActive(
                          context, controller.appointmentList[index]);
                    }
                  },
                  doctorDetails: () {
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
