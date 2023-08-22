import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/hospital_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/widget/hospital_item.dart';
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
                10.height,
                _doctorAdvert(context),
                10.height,
                _headerWidgets("Categories", () {}),
                5.height,
                _categoriesList(),
                5.height,
                _headerWidgets("Popular Doctor", () {}),
                5.height,
                _popularDoctor(context),
                5.height,
                _headerWidgets("Nearby Hospital", () {}),
                5.height,
                _hospitalList(),
                40.height,
              ],
            )));
  }

  Widget _doctorAppointment(BuildContext context) {
    return Container(
      width: context.width() - 100,
      height: 126,
      decoration: ShapeDecoration(
        color: const Color(0xFF4C5DF4),
        image: DecorationImage(
          image: AssetImage(Assets.images.banner1.path),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadows: const [
          BoxShadow(
            color: Color(0x0C473232),
            blurRadius: 8,
            offset: Offset(0, 3),
            spreadRadius: -1,
          ),
          BoxShadow(
            color: Color(0x3D0C1A4B),
            blurRadius: 1,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }

  Widget _doctorAdvert(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _doctorAppointment(context),
          10.width,
          _doctorAppointment(context),
        ],
      ),
    );
  }

  Widget _headerWidgets(String name, VoidCallback onTap) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(
            color: Color(0xFF0C1037),
            fontSize: 16,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: onTap,
          child: const Row(
            children: [
              Text(
                'View all',
                style: TextStyle(
                  color: Color(0xFF6E7682),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              ),
              // SvgPicture.asset(Assets.images.icons.arrowSide.path),
            ],
          ),
        )
      ],
    );
  }

  Widget _categoriesList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...[
            Assets.images.heart.path,
            Assets.images.kidney.path,
            Assets.images.dental.path,
            Assets.images.kidney.path
          ].map((e) => _categoryModel(e)).toList()
        ],
      ),
    );
  }

  Widget _categoryModel(String imageUrl) {
    return Row(
      children: [
        Container(
          width: 85,
          height: 102,
          padding: const EdgeInsets.all(4),
          decoration: ShapeDecoration(
            color: const Color(0xFF728DFF),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        5.width
      ],
    );
  }

  Widget _popularDoctor(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [...doctorsList.map((e) => DoctorItem(model: e)).toList()],
      ),
    );
  }

  Widget _hospitalList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...hospitalList
              .map((e) => Row(
                    children: [HospitalItem(model: e,), 10.width],
                  ))
              .toList()
        ],
      ),
    );
  }


}
