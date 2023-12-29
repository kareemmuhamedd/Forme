import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forme_app/core/test_models/top_trainers_model.dart';
import 'package:forme_app/core/transitions/page_slide.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/features/profile/presentation/views/help_center.dart';
import 'package:forme_app/features/profile/presentation/views/my_profile.dart';
import 'package:forme_app/features/profile/presentation/views/privacy_policy.dart';
import 'package:forme_app/features/profile/presentation/views/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> features = [
      'Your Profile',
      'Payment Methods',
      'My Membership',
      'My Appointments',
      'My Workouts',
      'My Programs',
      'Settings',
      'Help Center',
      'Privacy Policy',
      'Log out'
    ];
    final List<String> icons = [
      'profile_user',
      'card',
      'membership',
      'Schedule',
      'reward',
      'Group',
      'settings',
      'Exclamation-mark',
      'lock-video',
      'Vector',
    ];
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text('Profile',
                    style: TextStyles.textStyleBold.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.n900PrimaryTextColor))),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).height / 9,
                height: MediaQuery.sizeOf(context).height / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32.dg),
                  child: Image.asset(
                    topTrainersData[0].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text('Ahmed Ramy',
                style: TextStyles.textStyleBold.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.n900PrimaryTextColor,
                    height: 2)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                  children: List<Widget>.generate(10, (int index) {
                return profileFeature(icons[index], features[index], () {
                  switch (index) {
                    case 0:
                      Navigator.of(context)
                          .push(PageSlideTransition(const MyProfile()));
                    // case 1:
                    //   Navigator.of(context)
                    //       .push(PageSlideTransition(const MyProfile()));
                    // case 2:
                    //   Navigator.of(context)
                    //       .push(PageSlideTransition(const MyProfile()));
                    // case 3:
                    //   Navigator.of(context)
                    //       .push(PageSlideTransition(const MyProfile()));
                    // case 4:
                    //   Navigator.of(context)
                    //       .push(PageSlideTransition(const MyProfile()));
                    // case 5:
                    //   Navigator.of(context)
                    //       .push(PageSlideTransition(const MyProfile()));
                    case 6:
                      Navigator.of(context)
                          .push(PageSlideTransition(const SettingsScreen()));
                    case 7:
                      Navigator.of(context)
                          .push(PageSlideTransition(const HelpCenter()));
                    case 8:
                      Navigator.of(context)
                          .push(PageSlideTransition(const PrivacyPolicy()));
                    case 9:
                     //log out
                  }
                },
                    index != 9
                        ? AppColors.n900PrimaryTextColor
                        : AppColors.redColor);
              })),
            )
          ],
        ),
      ),
    ));
  }

  GestureDetector profileFeature(
      String icon, String title, void Function()? onTap, Color textColor) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: SvgPicture.asset('assets/image/profile/$icon.svg'),
              ),
              Text(
                title,
                style: TextStyles.textStyleRegular
                    .copyWith(height: 3, fontSize: 16.w, color: textColor),
              ),
              const Spacer(),
              Visibility(
                visible: textColor != AppColors.redColor
                    ? true
                    : false, // Set this to your condition
                child: SvgPicture.asset('assets/image/profile/arrow.svg'),
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: AppColors.n30StrokeColor,
          )
        ],
      ),
    );
  }
}