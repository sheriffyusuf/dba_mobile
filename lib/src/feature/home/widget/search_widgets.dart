import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget(
      {super.key, required this.controller, required this.callBack});
  final TextEditingController controller;
  final Function(String) callBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 4, 4, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // radius of 10
        color: AppPalette.grey.gray150, // green as background color
      ),
      child: TextField(
        controller: controller,
        onChanged: callBack,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: const Color(0xFFF1F1F1),
          hintText: "Search...",
          hintStyle: TextStyle(
            fontSize: 16,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            color: AppPalette.grey.gray360,
          ),
          prefixIcon: SizedBox(
            height: 10,
            width: 10,
            child: SvgPicture.asset(
              Assets.images.search.path,
              height: 5,
              width: 5,
              fit: BoxFit.scaleDown,
              color: AppPalette.black,
            ),
          ),
          /*  border: OutlineInputBorder(
            borderSide: BorderSide(color: AppPalette.grey.gray150),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ), */
        ),
      ),
    );
  }
}
