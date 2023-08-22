import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class CategoryListScreen extends GetView<DoctorAppointController> {
  const CategoryListScreen({super.key});

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
                        title: "Categories",
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
                      ...controller.categoryList.map((e) {
                        return InkWell(
                            onTap: () {
                                controller.gotoCategoriesScreen(e.name ?? "");
                            },
                            child: CategoryItem(imageUrl: e.imageUrl!));
                      })
                    ]),
              ],
            )));
  }
}
