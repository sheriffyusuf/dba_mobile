import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/category_doctor_item.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class CategoryDetailScreen extends GetView<DoctorAppointController> {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                AppAppBar(
                  title: controller.selectedCategories,
                )
                //20.height,
              ],
            ),
          )),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
      ), /*  ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: [
               ...doctorsList.map((e) => DoctorCategoriesItem(model: e,)).toList()
              ],
            ) */
    ));
  }
}
/* 

ListView.separated(
  itemCount: 100,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('$index sheep'),
    );
  },
  separatorBuilder: (context, index) {
    return Divider();
  },
)

 */