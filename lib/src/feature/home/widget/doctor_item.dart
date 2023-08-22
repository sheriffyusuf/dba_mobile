import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/home/doctor_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem(
      {super.key,
      required this.model,
      required this.bookNowCallback,
      required this.doctorDetails});
  final DoctorModel model;
  final VoidCallback bookNowCallback;
  final VoidCallback doctorDetails;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Container(
        width: context.width() - 150,
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
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
        child: Column(
          children: [
            GestureDetector(
              onTap: doctorDetails,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/40x40"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                      20.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            model.name ?? "",
                            style: const TextStyle(
                              color: Color(0xFF0C1037),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 1.43,
                            ),
                          ),
                          Text(
                            model.type ?? '',
                            style: const TextStyle(
                              color: Color(0xFF4C5DF4),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 1.33,
                            ),
                          ),
                          Text(
                            model.hospital ?? '',
                            style: const TextStyle(
                              color: Color(0xFF6E7682),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 1.33,
                            ),
                          )
                        ],
                      ),
                    ],
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
                                    height: 1.33,
                                  ),
                                ),
                                TextSpan(
                                  text: ' (${model.rewiews}+ Ratings)',
                                  style: const TextStyle(
                                    color: Color(0xFF6E7682),
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Assets.images.time.svg(),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: model.yearsOfExpe ?? '',
                                  style: const TextStyle(
                                    color: Color(0xFF0C1037),
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'Year Exp',
                                  style: TextStyle(
                                    color: Color(0xFF6E7682),
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  5.height,
                ],
              ),
            ),
            AppElevatedButton(
              height: 40,
              text: 'Book now',
              color: const Color(0xFF546EF7),
              onPressed:bookNowCallback
            ),
          ],
        ),
      ),
    );
  }
}
