import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/text_styles.dart';
import 'custom_radio_list_tile.dart';
import 'custom_shadow_button.dart';

class PickYourGoalScreenBody extends StatefulWidget {
  const PickYourGoalScreenBody({Key? key}) : super(key: key);

  @override
  State<PickYourGoalScreenBody> createState() => _PickYourGoalScreenBodyState();
}

List<String> options = [
  'Get Fitter',
  'Gain Weight',
  'Lose Weight',
  'Building Muscles',
  'Improve Endurance',
  'Learn The Basics',
];

class _PickYourGoalScreenBodyState extends State<PickYourGoalScreenBody> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 19.h,
          ),
          const Text(
            'What’s Your Goal?',
            style: Styles.heading4Bold,
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'This helps us create your personalized plan',
            style: Styles.textStyleRegular14.copyWith(
              color: AppColors.n70HintColor,
            ),
          ),
          SizedBox(
            height: 58.h,
          ),
          SizedBox(
            height: 450,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: CustomRadioListTile(
                    title: options[index].toString(),
                    value: options[index],
                    groupValue: currentOption,
                    onChanged: (String? value) {
                      setState(() {
                        currentOption = value!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}