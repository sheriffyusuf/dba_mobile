import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

class MyInputTextWidget extends StatelessWidget {
  const MyInputTextWidget(
      {super.key,
      required this.controller,
      required this.title,
      this.title2,
      required this.hint,
      this.showRequired = false,
      this.keyboardType,
      this.validator,
      this.power,
      required this.callBack});
  final TextEditingController controller;
  final String title;
  final String? title2;
  final String hint;
  final String? power;
  final bool showRequired;
  final Function(String) callBack;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (power != null)
              Flexible(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -4),
                        child: Text(
                          power!,
                          //superscript is usually smaller in size
                          textScaleFactor: 0.7,
                        ),
                      ),
                    ),
                    TextSpan(
                        text: title2,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ]),
                ),
              ),
            if (power == null)
              Flexible(
                child: Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ),
          ],
        ),
        SizedBox(
          height: 50,
          child: TextFormField(
              controller: controller,
              onChanged: callBack,
              keyboardType: keyboardType,
              validator: validator,
              decoration: inputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppPalette.grey.gray360,
                  ))),
        ),
        10.height
      ],
    );
  }
}
