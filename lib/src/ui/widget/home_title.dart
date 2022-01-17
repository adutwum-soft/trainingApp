import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Training',
          style: TextStyle(
            fontSize: 30,
            color: AppColors.homePageTitle,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: AppColors.homePageIcons,
            ),
            const SizedBox(width: 10),
            Icon(
              Icons.calendar_today_outlined,
              size: 20,
              color: AppColors.homePageIcons,
            ),
            const SizedBox(width: 15),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: AppColors.homePageIcons,
            ),
          ],
        ),
      ],
    );
  }
}
