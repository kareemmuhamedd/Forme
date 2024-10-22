import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/features/trainee_features/Trainer_details/presentation/views/widgets/custom_clip_rect.dart';
import 'package:forme_app/features/trainee_features/workout_detail/presentation/views/widgets/workout_icon.dart';

class FitnessTrainerSection extends StatelessWidget {
  const FitnessTrainerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomClipRect(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Ramy',
              style: TextStyles.textStyleRegular
                  .copyWith(fontSize: 14.sp, color: AppColors.n900Black),
            ),
            Text(
              'GYM Owner',
              style: TextStyles.textStyleRegular.copyWith(
                fontSize: 11.sp,
              ),
            )
          ],
        ),
        const Spacer(),
        WorkoutIcon(
          icon: 'chat',
          onTap: () {},
        ),
        WorkoutIcon(
          icon: 'call',
          onTap: () {},
        )
      ],
    );
  }
}
