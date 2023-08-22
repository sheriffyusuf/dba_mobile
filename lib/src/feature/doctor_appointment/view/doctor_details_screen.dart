import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/doctor_appoint/review_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/component/my_app_bar.dart';
import 'package:dba_mobile/src/feature/component/rating_bar.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/provider/doctor_appoint_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class DoctorDetailsScreen extends GetView<DoctorAppointController> {
  const DoctorDetailsScreen({super.key});

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
                    title: "Doctor Details",
                  )
                  //20.height,
                ],
              ),
            )),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          children: [
            _headerDetails(context),
            40.height,
            Align(alignment: Alignment.center, child: _badges(context)),
            20.height,
            _headerTitle("Biography"),
            const Text(
              'Dr. Josiah Toor treated more than 5,000 cancer pati-ent who had been written off as incurable by other doctors. He claimed no miracle cures, but the succes\ns record of his revolutionary whole body treatment was extraordinary. This is the story of a tempestuous life; his Ringberg Clinic in Bavaria, ',
              style: TextStyle(
                color: Color(0xFF6E7682),
                fontSize: 14,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 1.57,
              ),
            ),
            10.height,
            _headerTitle("Availability"),
            10.height,
            _avialablityWidget("Mon - Fri 09.00 AM - 08.00 PM"),
            10.height,
            _headerWidgets("Review(60)", "4.5", () {}),
            10.height,
            _reviewList(),
            100.height,
          ],
        ),
        bottomSheet: Container(
          height: 90,
          width: context.width(),
          padding: const EdgeInsets.only(
            top: 16,
            left: 20,
            right: 20,
            bottom: 24,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x0F0D174E),
                blurRadius: 20,
                offset: Offset(0, -6),
                spreadRadius: 0,
              )
            ],
          ),
          child: AppElevatedButton(
              height: 40,
              fontSize: 20,
              width: context.width() - 150,
              text: 'Book Appointment',
              color: const Color(0xFF546EF7),
              onPressed: () {
                controller.gotoAppointmentScreen();
              }),
        ),
      ),
    );
  }

  Widget _headerWidgets(String name, String rating, VoidCallback onTap) {
    return Row(children: [
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
          child: Row(children: [
            Assets.images.star.svg(),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: rating,
                style: const TextStyle(
                  color: Color(0xFF6E7682),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]))
          ]))
    ]);
  }

  Widget _headerTitle(String title) {
    return Text(title,
        style: const TextStyle(
          color: Color(0xFF0C1037),
          fontSize: 16,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
          height: 1.62,
        ));
  }

  Widget _headerDetails(BuildContext context) {
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
                Image.asset(controller.selectedModel.imageUrl ?? ""),
                5.height,
              ],
            ),
            10.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  controller.selectedModel.name ?? "",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'National Institute of Cancer Research\n& Hospital, ',
                        style: TextStyle(
                          color: Color(0xFF6E7682),
                          fontSize: 13,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '(Heart Specialist)',
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
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Working at:',
                        style: TextStyle(
                          color: Color(0xFF0C1037),
                          fontSize: 13,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 1.54,
                        ),
                      ),
                      TextSpan(
                        text: ' New York, USA',
                        style: TextStyle(
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
          ],
        ),
      ),
    );
  }

  Widget _badges(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _oneBadge(context, const Color(0xFFDDFFDD), const Color(0xFF4AAF4F),
            "7 years", "Experiences"),
        10.width,
        _oneBadge(context, const Color(0xFFF9EBC7), const Color(0xFFFDBA0B),
            "5000+", "Patient"),
      ],
    );
  }

  Widget _oneBadge(BuildContext context, Color background, Color circleColor,
      String firstWord, String lastWord) {
    return Container(
      width: context.width() / 2 - 35,
      height: 68,
      decoration: ShapeDecoration(
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        children: [
          5.width,
          Container(
            width: 48,
            height: 48,
            decoration: ShapeDecoration(
              color: circleColor,
              shape: const OvalBorder(),
            ),
            child: Assets.images.badge
                .svg(height: 20, width: 20, fit: BoxFit.scaleDown),
          ),
          10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                firstWord,
                style: const TextStyle(
                  color: Color(0xFF0C1037),
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  height: 1.62,
                ),
              ),
              Text(
                lastWord,
                style: const TextStyle(
                  color: Color(0xFF6E7682),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _avialablityWidget(String time) {
    return Text(
      time,
      style: const TextStyle(
        color: Color(0xFF6E7682),
        fontSize: 14,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w400,
        height: 1.57,
      ),
    );
  }

  Widget _reviewList() {
    return Column(
      children: [
        ...controller.commentList
            .map((e) => Column(
                  children: [
                    _reviewItem(e),
                    10.height,
                  ],
                ))
            .toList()
      ],
    );
  }

  Widget _reviewItem(ReviewModel e) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const ShapeDecoration(
                  color: Color(0xFFDDFFDD),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: Text(
                    e.name!.substring(0, 1),
                    style: const TextStyle(
                      color: Color(0xFF0C1037),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                      height: 1.62,
                    ),
                  ),
                ),
              ),
              10.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.name!,
                    style: const TextStyle(
                      color: Color(0xFF0C1037),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                      height: 1.62,
                    ),
                  ),
                  StarRating(
                    rating: e.rating.toDouble(),
                    onRatingChanged: (rating) {},
                  )
                ],
              ),
              const Spacer(),
              Text(
                e.time!,
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
          Text(
            e.comment!,
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
    );
  }
}
