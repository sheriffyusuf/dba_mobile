import 'package:auto_route/annotations.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/Models/home/product_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:dba_mobile/src/feature/home/provider/home_controller.dart';
import 'package:dba_mobile/src/feature/home/widget/doctor_item.dart';
import 'package:dba_mobile/src/feature/home/widget/home_header.dart';
import 'package:dba_mobile/src/feature/home/widget/search_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const PreferredSize(
                preferredSize: Size(double.infinity, 80),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      HomeHeaderWidget(),
                      //20.height,
                    ],
                  ),
                )),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: ListView(
                children: [
                  MySearchWidget(
                    controller: controller.searchController,
                    callBack: (value) {},
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF8F8FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.height,
                        const Text(
                          'Featured Services',
                          style: TextStyle(
                            color: Color(0xFF0C1037),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 1.62,
                          ),
                        ),
                        10.height,
                        _doctorAppointment(),
                        _otherList(context),
                        10.height,
                        _headerWidgets("Popular Doctor", () {
                          controller.gotoPopularPage();
                        }),
                        5.height,
                        _popularDoctor(context),
                        _headerWidgets("Diagnostics", () {}),
                        5.height,
                        _diagnosticWidgets(context),
                        _headerWidgets("Product List", () {}),
                        5.height,
                        _productList(),
                        20.height,
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  Widget _doctorAppointment() {
    return GestureDetector(
      onTap: () {
        controller.gotoDoctorBinding();
      },
      child: Container(
        height: 126,
        decoration: ShapeDecoration(
          color: const Color(0xFF4C5DF4),
          image: DecorationImage(
            image: AssetImage(Assets.images.docApp.path),
            fit: BoxFit.cover,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
      ),
    );
  }

  Widget _otherList(BuildContext context) {
    var width = context.width() / 2.3;
    var height = context.height() / 5;
    return Column(
      children: [
        20.height,
        Row(
          children: [
            _oneCard(width, height, Assets.images.diagnostic.path, () {}),
            10.width,
            _oneCard(width, height, Assets.images.pharmacy.path, () {})
          ],
        ),
        10.height,
        Row(
          children: [
            _oneCard(width, height, Assets.images.ambulance.path, () {}),
            10.width,
            _oneCard(width, height, Assets.images.nursingCare.path, () {})
          ],
        ),
      ],
    );
  }

  Widget _oneCard(
      double width, double height, String path, void Function()? function) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          // color: const Color(0xFF4C5DF4),
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.fill,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

  Widget _popularDoctor(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...doctorsList
              .map((e) => DoctorItem(
                  model: e,
                  bookNowCallback: () {
                    controller.gotoBookNowPage(e);
                  },
                  doctorDetails: () {
                    controller.gotoDoctorDetail(e);
                  }))
              .toList()
        ],
      ),
    );
  }

  Widget _diagnosticWidgets(BuildContext context) {
    return Row(
      children: [
        _diagnosticItem(
          context,
          Assets.images.diagnotics1.svg(),
        ),
        10.width,
        _diagnosticItem(
            context,
            CircleAvatar(
              backgroundColor: Colors.red,
              child: Assets.images.cross.svg(),
            )),
      ],
    );
  }

  Widget _diagnosticItem(BuildContext context, Widget widget) {
    return Container(
      width: context.width() / 2.3,
      height: 212,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C1F50FF),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget,
          10.height,
          const Text(
            'Covid RT PCR',
            style: TextStyle(
              color: Color(0xFF0C1037),
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              height: 1.29,
            ),
          ),
          const Text(
            'Known as Covid-19 Virus Quantitaticve Pcr ',
            style: TextStyle(
              color: Color(0xFF7C8195),
              fontSize: 12,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              height: 1.33,
            ),
          ),
          const Text(
            '\$6.99',
            style: TextStyle(
              color: Color(0xFF4AAF4F),
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              height: 1.43,
            ),
          ),
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
    );
  }

  Widget _productList() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...controller.productModelList.map((e) => _productItem(e)).toList()
          ],
        ));
  }

  Widget _productItem(ProductModel model) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 160,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0C1F50FF),
              blurRadius: 20,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(model.imageUrl ?? ""),
            5.height,
            Text(
              model.name ?? "",
              style: const TextStyle(
                color: Color(0xFF0C1037),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 1.29,
              ),
            ),
            Text(
              '\$${model.price}',
              style: const TextStyle(
                color: Color(0xFF4AAF4F),
                fontSize: 14,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 1.43,
              ),
            )
          ],
        ),
      ),
    );
  }
}
