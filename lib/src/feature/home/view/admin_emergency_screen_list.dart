import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/login/widget/auth_field.dart';
import 'package:dba_mobile/src/feature/register/provider/register_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

@RoutePage()
class AdminEmergencyScreen extends GetView<HomeController> {
  const AdminEmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        children: [
          15.height,
          Row(
            children: [
              Text('List Doctor',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 30)),
              //Assets.images.icons.wave.image(),
            ],
          ),
          40.height,
        ],
      ),
    ));
  }
}
