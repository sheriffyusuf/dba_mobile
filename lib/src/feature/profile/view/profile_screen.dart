import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/feature/discover/provider/discover_controller.dart';
import 'package:dba_mobile/src/feature/profile/provider/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(300, 100),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              'Profile',
              style: TextStyle(
                color: Color(0xFF0C1037),
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 1.56,
              ),
            ),
          )),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: ListView(
            children: [_profileHeader(context), 10.height, _listOptions()],
          )),
    ));
  }

  Widget _profileHeader(BuildContext context) {
    return Container(
      width: 335,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF4C5DF4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const ShapeDecoration(
              color: Color(0xFFFDBA0B),
              shape: OvalBorder(),
            ),
            child: const Center(
              child: Text(
                'A',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              ),
            ),
          ),
          10.width,
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ibne Riead',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                ),
              ),
              Text(
                'Phone Number: 01855671615',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              ),
              Text(
                'User ID: #74957485',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _listOptions() {
    return Column(
      children: [
        20.height,
        GestureDetector(
            onTap: () {
              controller.gotoProfileScreen();
            },
            child: _anItem(Assets.images.prof.svg(), "My Profile")),
        20.height,
        _anItem(Assets.images.rateUs.svg(), "Rate us"),
        20.height,
        _anItem(Assets.images.logOut.svg(), "Log out"),
      ],
    );
  }

  Widget _anItem(Widget image, String name) {
    return Row(
      children: [
        image,
        20.width,
        Text(
          name,
          style: const TextStyle(
            color: Color(0xFF6E7682),
            fontSize: 16,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_sharp,
          color: Color(0xff616161),
        )
      ],
    );
  }
}
