import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/patient_details/provider/patient_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

@RoutePage()
class PatientDetailScreen extends GetView<PatientDetailsController> {
  const PatientDetailScreen({super.key});

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
                        title: "Patient Details",
                      )
                      //20.height,
                    ],
                  ),
                )),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: const [],
            )));
  }
}
