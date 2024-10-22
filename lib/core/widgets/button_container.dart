import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/core/widgets/custom_app_button.dart';

class ButtonContainer extends StatelessWidget {
  final String buttonTitle;
  final bool havePrice,isLoad;
  final Color color;
  final void Function()? onTap;
  const ButtonContainer(
      {super.key,
      required this.buttonTitle,
      this.havePrice = false,
      this.isLoad = false,
      this.onTap,
      this.color = AppColors.primaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 6.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.background,
          boxShadow: [
            BoxShadow(
              color: AppColors.n50dropShadowColor.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.dg),
              topRight: Radius.circular(20.dg))),
      padding: EdgeInsets.only(
          left: 24.h,
          right: 24.h,
          top: 20.h,
          bottom: (MediaQuery.sizeOf(context).height / 6.h) - 68.h),
      child: havePrice
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total price',
                      style:
                          TextStyles.textStyleRegular.copyWith(fontSize: 14.sp),
                    ),
                    Text(
                      '\$1500',
                      style: TextStyles.textStyleBold.copyWith(
                          fontSize: 14.sp, color: AppColors.primaryColor),
                    )
                  ],
                ),
                CustomAppButton(
                  isLoad: isLoad,
                  title: buttonTitle,
                  onTap: onTap,
                  widthDivider: 1.2.h,
                ),
              ],
            )
          : CustomAppButton(
            isLoad: isLoad,
              title: buttonTitle,
              onTap: onTap,
              color: color,
            ),
    );
  }
}
