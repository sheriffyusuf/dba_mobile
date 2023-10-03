import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/category_doctor_item.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/admin_doctor_item.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:dba_mobile/src/feature/register/provider/register_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

@RoutePage()
class AdminListDoctorScreen extends GetView<HomeController> {
  const AdminListDoctorScreen({super.key});

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
              return AdminDoctorCategoriesItem(
                  model: controller.docList[index],
                  isFromQueue: controller.isToQueue.value,
                  bookNow: () {
                    var availability =
                        controller.docList[index].availability == "yes"
                            ? 'Doctor unavailable'
                            : 'Doctor available';
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: const Text('Doctor Availability'),
                              content: Text(
                                  'Are you sure you want to make $availability'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    if (controller
                                            .docList[index].availability ==
                                        "yes") {
                                      FirebaseFirestore.instance
                                          .collection('doctors')
                                          .doc(controller.docList[index].id)
                                          .update(
                                        {'availability': 'no'},
                                      ).then((value) {
                                        appRoute.pop();
                                        controller.getAllDoctor();
                                      });
                                    } else {
                                      FirebaseFirestore.instance
                                          .collection('doctors')
                                          .doc(controller.docList[index].id)
                                          .update(
                                        {'availability': 'yes'},
                                      ).then((value) {
                                        appRoute.pop();
                                        controller.getAllDoctor();
                                      });
                                    }
                                  },
                                )
                              ],
                            ));
                  },
                  doctorDetails: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: const Text('Delete Doctor'),
                              content: const Text(
                                  'Are you sure you want to Delete Doctor'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection('doctors')
                                        .doc(controller.docList[index].id)
                                        .delete()
                                        .then((value) {
                                      appRoute.pop();
                                       controller.getAllDoctor();
                                    });
                                  },
                                )
                              ],
                            ));
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
