import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage("https://via.placeholder.com/40x40"),
          ),
          10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Current Location',
                style: TextStyle(
                  color: Color(0xFF6E7682),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                ),
              ),
              Row(
                children: [
                  Assets.images.mapPin.svg(),
                  const Text(
                    'Nigeria',
                    style: TextStyle(
                      color: Color(0xFF4C5DF4),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          /*  const Spacer(),
          Align(
              alignment: Alignment.topRight,
              child: Assets.images.icons.notification.image()), */
          Container(
              width: 40,
              height: 40,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(
                      width: 1, color: Color.fromARGB(255, 65, 66, 68)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Assets.images.notification.svg(),
              )),
          5.width
        ],
      ),
    );
  }
}
