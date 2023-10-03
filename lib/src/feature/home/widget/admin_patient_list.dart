import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/home/doctor_model.dart';
import 'package:dba_mobile/src/Models/login/register_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AdminpatientRecordItem extends StatelessWidget {
  const AdminpatientRecordItem(
      {super.key,
      required this.model,
      required this.bookNow,
      required this.isFromQueue,
      required this.doctorDetails});
  final RegisterModel model;
  final bool isFromQueue;
  final VoidCallback bookNow;
  final VoidCallback doctorDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: doctorDetails,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        model.name ?? "",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Age : ${model.age}',
                              style: const TextStyle(
                                color: Color(0xFF6E7682),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const TextSpan(
                              text: '',
                              style: TextStyle(
                                color: Color(0xFF4C5DF4),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Address',
                              style: TextStyle(
                                color: Color(0xFF0C1037),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.54,
                              ),
                            ),
                            TextSpan(
                              text: model.address,
                              style: const TextStyle(
                                color: Color(0xFF6E7682),
                                fontSize: 13,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
