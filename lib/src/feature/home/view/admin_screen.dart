import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class AdminScreen extends GetView<HomeController> {
  const AdminScreen({super.key});

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
                        title: "Admin",
                      )
                      //20.height,
                    ],
                  ),
                )),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                /*    GestureDetector(
                  onTap: () {
                    appRoute.push(const AdminEmergencyRoute());
                  },
                  child: Container(
                    width: 281,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF264D9B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'List of Emergency',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ), */
                GestureDetector(
                  onTap: () {
                    appRoute.push(const PostDoctorRoute());
                  },
                  child: Container(
                    width: 281,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF264D9B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Upload Doctor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    appRoute.push(const AdminListDoctorRoute());
                  },
                  child: Container(
                    width: 281,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF264D9B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'List of Doctor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    appRoute.push(const AdminPatientRoute());
                  },
                  child: Container(
                    width: 281,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF264D9B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Patient Record',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            )));
  }
}
