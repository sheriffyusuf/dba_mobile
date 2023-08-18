import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

class InputWithTextHead extends StatelessWidget {
  const InputWithTextHead(
      {super.key,
      required this.title,
      this.hint,
      required this.controller,
      this.readOnly,
      this.prefixIcon,
      required this.textFieldType});

  final String title;
  final String? hint;
  final TextEditingController controller;
  final TextFieldType textFieldType;
  final bool? readOnly;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                height: 1.30,
                color: const Color(0xFF0D120E),
              )),
        ),
        AppTextField(
          textFieldType: textFieldType,
          readOnly: readOnly,
          decoration: inputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF7F909F),
              ),
              fillColor: Colors.transparent,
              prefixIcon: prefixIcon),
          controller: controller,
        )
      ],
    );
  }
}
