import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/hospital_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class HospitalItem extends StatelessWidget {
  const HospitalItem({super.key, required this.model});
  final HospitalModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shadows: [
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(model.imageUrl!),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name ?? '',
                  style: const TextStyle(
                    color: Color(0xFF0C1037),
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Row(
                    children: [
                      Assets.images.mapPin.svg(),
                      10.width,
                      Expanded(
                        child: Text(
                          model.location ?? "",
                          style: const TextStyle(
                            color: Color(0xFF6E7682),
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                5.height,
                Row(
                  children: [
                    Row(
                      children: [
                        Assets.images.star.svg(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: model.rating,
                                style: const TextStyle(
                                  color: Color(0xFF0C1037),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: ' (${model.review}+ Ratings)',
                                style: const TextStyle(
                                  color: Color(0xFF6E7682),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                5.height,
                AppElevatedButton(
                  height: 40,
                  text: 'Book now',
                  color: const Color(0xFF546EF7),
                  onPressed: () {
                    // print('i must be logged in');
                    // controller.registerUser(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
