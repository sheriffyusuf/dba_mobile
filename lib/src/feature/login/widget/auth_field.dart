import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/component/inputdecoration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide ContextExtensions;

class InputWithTextHead extends StatelessWidget {
  const InputWithTextHead(
      {super.key,
      required this.title,
      required this.controller,
       this.readOnly,
      required this.textFieldType});

  final String title;
  final TextEditingController controller;
  final TextFieldType textFieldType;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Text(title,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        AppTextField(
          textFieldType: textFieldType,
          readOnly: readOnly,
          decoration: inputDecoration(fillColor: Colors.transparent),
         
       
          
          controller: controller,
        )
      ],
    );
  }
}
