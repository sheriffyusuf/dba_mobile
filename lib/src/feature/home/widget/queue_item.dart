import 'package:dba_mobile/src/Models/home/queue_model.dart';
import 'package:dba_mobile/src/component/button.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class QueueItem extends StatelessWidget {
  const QueueItem(
      {super.key,
      required this.model,
      required this.bookNow,
      required this.isFromQueue,
      required this.doctorDetails});
  final QueueModel model;
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  model.count ?? "0",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                10.width,
                Text(
                  model.name ?? "",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            //if (FirebaseAuth.instance.currentUser!.uid == model.id)
            AppElevatedButton(
                height: 40,
                width: 100,
                text: 'Cancel',
                color: const Color(0xFF546EF7),
                onPressed: bookNow),
          ],
        ),
      ),
    );
  }
}
