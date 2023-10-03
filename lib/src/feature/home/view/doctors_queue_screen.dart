import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/queue_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class DoctorsQueueScreen extends GetView<HomeController> {
  const DoctorsQueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getAllQueue();
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                AppAppBar(
                  title: "Doctors Queue",
                )
                //20.height,
              ],
            ),
          )),
      body: Obx(
        () {
          if (controller.queueList.isEmpty) return Container();
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            shrinkWrap: true,
            itemCount: controller.queueList.length,
            itemBuilder: (context, index) {
              return QueueItem(
                  model: controller.queueList[index],
                  isFromQueue: controller.isToQueue.value,
                  bookNow: () {},
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
