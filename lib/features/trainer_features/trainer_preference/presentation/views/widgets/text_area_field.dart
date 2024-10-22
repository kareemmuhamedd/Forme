// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/styles.dart';
import 'package:forme_app/core/utils/text_styles.dart';

class TextAreaField extends StatelessWidget {
  const TextAreaField({
    Key? key,
    required this.hintText,
    this.controller,
  }) : super(key: key);
  final String hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 6,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppColors.primaryColor,
      style: TextStyles.textStyleRegular
          .copyWith(
            fontSize: 14.sp,
          )
          .copyWith(color: AppColors.n900Black),
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(
            left: 0.w,
            top: 8.h,
            bottom: 8.h,
            right: 8.h
          ),
          prefix: Padding(
            padding: EdgeInsets.only(left: 16.w),
          ),
          hintText: hintText,
          hintStyle: TextStyles.hintStyle,
          border: textFieldBorder(),
          enabledBorder: textFieldBorder(),
          focusedBorder: textFieldBorder(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
          errorBorder: textFieldBorder(
            color: AppColors.r200ErrorColor,
            width: 2.0,
          )),
    );
  }
}
