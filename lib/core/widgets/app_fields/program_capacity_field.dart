import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/styles.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/core/widgets/custom_build_form.dart';

class ProgramCapacityField extends StatelessWidget {
  const ProgramCapacityField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBuildForm(
      title: 'Program Capacity',
      titleColor: AppColors.n400,
      optional: true,
      child: TextFormField(
        textAlign: TextAlign.start,
        //controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppColors.primaryColor,
        //enabled: widget.enabled,
        style: TextStyles.textStyleRegular
            .copyWith(fontSize: 14.sp, color: AppColors.n900Black),
        keyboardType: TextInputType.number,

        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(
            left: 0.w,
            top: 8.h,
            bottom: 8.h,
          ),
          hintText: '0',
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
          ),
          errorMaxLines: 1,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/image/Icon/users.svg',
            ),
          ),
        ),
        validator: (value) {
          return null;
        },
      ),
    );
  }
}
