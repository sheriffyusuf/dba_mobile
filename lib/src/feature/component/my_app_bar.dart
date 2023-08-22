import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

class AppAppBar extends StatelessWidget {
  const AppAppBar(
      {super.key, required this.title, this.textColor, this.onPress});
  final String title;
  final Color? textColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: onPress ??
                  () {
                    appRoute.pop();
                  },
              child: const Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_sharp),
              )),
          25.width,
          Align(
            alignment: Alignment.topLeft,
            child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                    fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
