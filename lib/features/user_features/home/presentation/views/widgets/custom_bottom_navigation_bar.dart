import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/features/user_features/home/presentation/manager/bloc/home_bloc.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.icons,
    required this.labels,
  }) : super(key: key);
  final List<String>
      icons;
  final List<String> labels;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      items: List<BottomNavigationBarItem>.generate(
        5,
        (int index) {
          return customNavigationBarItem(widget.icons[index], widget.labels[index]);
        },
      ),
      currentIndex: BlocProvider.of<HomeBloc>(context).currentIndex,
      onTap: (index) {
        setState(() {
          BlocProvider.of<HomeBloc>(context).getCurrentIndex(index);
        });
      },
      unselectedItemColor: AppColors.n100Color,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.p300PrimaryColor,
      showUnselectedLabels: true,
    );
  }

  BottomNavigationBarItem customNavigationBarItem(String icon, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/image/Icon/$icon.svg',
        height: 20.h,
        width: 20.w,
      ),
      label: label,
    );
  }
}